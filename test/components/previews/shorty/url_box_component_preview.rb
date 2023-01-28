# frozen_string_literal: true

class Shorty::UrlBoxComponentPreview < ViewComponent::Preview
  def default
    render(Shorty::UrlBoxComponent.new)
  end
end
