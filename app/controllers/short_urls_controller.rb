# frozen_string_literal: true

class ShortUrlsController < ApplicationController
  def index
    @short_url = ShortUrl.new
  end
end
