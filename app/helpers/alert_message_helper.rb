# frozen_string_literal: true

module AlertMessageHelper
  ALERT_TYPES = ActiveSupport::HashWithIndifferentAccess.new({
                                                               success: :success,
                                                               danger: :danger,
                                                               error: :danger,
                                                               warning: :warning,
                                                               info: :info
                                                             }).freeze

  ALERT_ICONS = ActiveSupport::HashWithIndifferentAccess.new({
                                                               success: 'check-circle',
                                                               danger: 'x-circle',
                                                               error: 'x-circle',
                                                               warning: 'exclamation-triangle',
                                                               info: 'information-circle'
                                                             }).freeze

  def alert_types
    ALERT_TYPES
  end

  def alert_icons
    ALERT_ICONS
  end
end
