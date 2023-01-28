# frozen_string_literal: true

module MainNavigation
  class MobileMenuComponentPreview < ViewComponent::Preview
    def default
      render(MainNavigation::MobileMenuComponent.new)
    end
  end
end
