# frozen_string_literal: true

class ShortUrl < ApplicationRecord
  validates :original_url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]) }
  validates :short_code, presence: true, uniqueness: true

  before_validation :generate_short_code, on: :create

  ALPHABET = '23456789bcdfghjkmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ-_'
  BASE = ALPHABET.length

  def self.encode(database_id)
    shortened_url = ''
    while database_id.positive?
      shortened_url = ALPHABET[database_id % BASE] + shortened_url
      database_id /= BASE
    end
    shortened_url
  end

  def self.decode(short_url)
    database_id = index = 0
    while index < short_url.length
      database_id = database_id * BASE + ALPHABET.index(short_url[index])
      index += 1
    end
    database_id
  end

  private

  def generate_short_code
    self.short_code = ShortUrl.encode(id)
  end
end
