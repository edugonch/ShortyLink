# frozen_string_literal: true

module Util
  class AlertMessageComponentPreview < ViewComponent::Preview
    def default
      render(Util::AlertMessageComponent.new)
    end
  end
end
