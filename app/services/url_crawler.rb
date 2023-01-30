# frozen_string_literal: true

require 'net/http'

class UrlCrawler
  # rubocop:disable Metrics/AbcSize
  def self.call(url)
    uri = URI(url)
    response = Net::HTTP.get_response(uri)
    return unless response.is_a?(Net::HTTPSuccess)

    doc = Nokogiri::HTML(response.body)
    title = doc.css('title').first.content
    logo = doc.css("link[rel='icon']").first&.attributes&.dig('href')&.value
    logo = URI.join(url, logo).to_s if logo
    [title, logo || '']
  end
  # rubocop:enable Metrics/AbcSize
end
