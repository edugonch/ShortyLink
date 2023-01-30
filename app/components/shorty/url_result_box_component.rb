# frozen_string_literal: true

module Shorty
  class UrlResultBoxComponent < ViewComponent::Base
    delegate :turbo_frame_tag, to: :helpers
  end
end
