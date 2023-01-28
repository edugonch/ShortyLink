# frozen_string_literal: true

class MainNavigation::DesktopMenuComponentPreview < ViewComponent::Preview
  def default
    render(MainNavigation::DesktopMenuComponent.new)
  end
end
