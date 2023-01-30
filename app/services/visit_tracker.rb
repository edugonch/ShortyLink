# frozen_string_literal: true

class VisitTracker
  def self.track(short_url, ip_address)
    Visit.create(ip_address:, short_url:)
  end
end
