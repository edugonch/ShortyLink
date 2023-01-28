# frozen_string_literal: true

module Shorty
  class UrlBoxComponentPreview < ViewComponent::Preview
    def default
      render(Shorty::UrlBoxComponent.new)
    end
  end
end
