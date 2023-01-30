# frozen_string_literal: true

module Util
  class AlertMessageComponent < ViewComponent::Base
    delegate :alert_icons, to: :helpers
    delegate :alert_types, to: :helpers
    delegate :alert_icon_url, to: :helpers
    delegate :heroicon, to: :helpers
    delegate :turbo_frame_tag, to: :helpers

    def initialize(title: nil, message: nil,
                   type: :success,
                   render: true,
                   class_name: '')
      super
      @title = title
      @message = message
      @type = type
      @render = render
      @class_name = class_name
    end

    def messages
      if @message.is_a?(String)
        [@message]
      else
        @message
      end
    end
  end
end
