# frozen_string_literal: true

module MainNavigation
  class DesktopMenuComponentPreview < ViewComponent::Preview
    def default
      render(MainNavigation::DesktopMenuComponent.new)
    end
  end
end
