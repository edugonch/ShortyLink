# frozen_string_literal: true

class Util::AlertMessageComponentPreview < ViewComponent::Preview
  def default
    render(Util::AlertMessageComponent.new)
  end
end
