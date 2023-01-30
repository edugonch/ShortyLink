# frozen_string_literal: true

class ShortUrlsController < ApplicationController
  before_action :check_short_url_exists, only: [:create]

  def index
    @short_url = ShortUrl.new
  end

  def unpack
    @short_url = ShortUrl.find_by!(short_code: params[:id])
    VisitTracker.call(@short_url, request.remote_ip)
    redirect_to @short_url.original_url, allow_other_host: true
  end

  def show; end

  def top100
    @short_urls = ShortUrl.order(visits_count: :desc).limit(100)
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
    png = qr.as_png
    send_data png.to_s, type: 'image/png', disposition: 'inline'
  end

  private

  def short_url_params
    params.permit(:original_url)
  end

  def check_short_url_exists
    return unless ShortUrl.exists?(short_url_params)

    respond_to do |format|
      format.html { super }
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace('alert', partial: 'short_urls/short_url_error')
      end
    end
    nil
  end
end
