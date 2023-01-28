# frozen_string_literal: true

class MainNavigationComponentPreview < ViewComponent::Preview
  def default
    render(MainNavigationComponent.new)
  end
end
