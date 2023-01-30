# frozen_string_literal: true

class Visit < ApplicationRecord
  belongs_to :short_url, counter_cache: true
end
