# frozen_string_literal: true

class MainNavigation::MobileMenuComponentPreview < ViewComponent::Preview
  def default
    render(MainNavigation::MobileMenuComponent.new)
  end
end
