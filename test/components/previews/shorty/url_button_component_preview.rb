# frozen_string_literal: true

module Shorty
  class UrlButtonComponentPreview < ViewComponent::Preview
    def default
      render(Shorty::UrlButtonComponent.new)
    end
  end
end
