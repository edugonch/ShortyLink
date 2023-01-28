# frozen_string_literal: true

class MainNavigation::NavMenuComponentPreview < ViewComponent::Preview
  def default
    render(MainNavigation::NavMenuComponent.new)
  end
end
