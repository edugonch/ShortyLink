# frozen_string_literal: true

class Shorty::UrlButtonComponentPreview < ViewComponent::Preview
  def default
    render(Shorty::UrlButtonComponent.new)
  end
end
