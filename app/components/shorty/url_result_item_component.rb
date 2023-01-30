# frozen_string_literal: true

module Shorty
  class UrlResultItemComponent < ViewComponent::Base
    delegate :turbo_stream_from, to: :helpers

    def initialize(short_url)
      super
      @short_url = short_url
    end
  end
end
