# frozen_string_literal: true

module Shorty
  class UrlInputComponentPreview < ViewComponent::Preview
    def default
      render(Shorty::UrlInputComponent.new)
    end
  end
end
