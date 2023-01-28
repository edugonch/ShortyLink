# frozen_string_literal: true

class Shorty::UrlInputComponentPreview < ViewComponent::Preview
  def default
    render(Shorty::UrlInputComponent.new)
  end
end
