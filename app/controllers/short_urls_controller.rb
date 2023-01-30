# frozen_string_literal: true

class ShortUrlsController < ApplicationController
  def index
    @short_url = ShortUrl.new
  end

  def create
    @short_url = ShortUrl.new(short_url_params)
    if @short_url.save
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Quote was successfully created.' }
        format.turbo_stream
      end
    else
      render :index, status: :unprocessable_entity
    end
  end

  def qr_code
    short_url = ShortUrl.find_by(id: params[:id])
    url = request.base_url + short_url.short_code

    qr = RQRCode::QRCode.new(url)
    png = qr.to_img
    send_data png.to_s, type: 'image/png', disposition: 'inline'
  end

  private

  def short_url_params
    params.permit(:original_url, :authenticity_token)
  end
end
