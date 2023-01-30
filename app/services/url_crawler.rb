# frozen_string_literal: true

require 'net/http'

class UrlCrawler
  def self.call(url)
    uri = URI(url)
    response = Net::HTTP.get_response(uri)
    return unless response.is_a?(Net::HTTPSuccess)

    doc = Nokogiri::HTML(response.body)
    title = doc.css('title').first.content
    icon = doc.css("link[rel='icon']").first.attributes['href'].value
    { title:, icon: }
  end
end
