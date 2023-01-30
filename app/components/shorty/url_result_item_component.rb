# frozen_string_literal: true

module Shorty
  class UrlResultItemComponent < ViewComponent::Base
    def initialize(short_url)
      super
      @short_url = short_url
    end
  end
end
