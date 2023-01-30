# frozen_string_literal: true

class CrawNewUrlJob < ApplicationJob
  queue_as :default

  # rubocop:disable Metrics/MethodLength
  def perform(url, short_url_id)
    title, logo = UrlCrawler.call(url)
    short_url = ShortUrl.find(short_url_id)

    short_url.title = title
    short_url.logo = logo
    short_url.save

    Turbo::StreamsChannel.broadcast_replace_to(
      "short_url_#{short_url.id}",
      trarget: "short_url_#{short_url.id}",
      partial: 'short_urls/short_url',
      locals: { short_url: }
    )
  end
  # rubocop:enable Metrics/MethodLength
end
