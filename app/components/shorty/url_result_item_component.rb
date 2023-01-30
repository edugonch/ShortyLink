# frozen_string_literal: true

module Shorty
  class UrlResultItemComponent < ViewComponent::Base
    delegate :turbo_frame_tag, to: :helpers

    def initialize(short_url)
      super
      @short_url = short_url
    end
  end
end
