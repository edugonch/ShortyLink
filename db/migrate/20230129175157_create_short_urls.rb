# frozen_string_literal: true

class CreateShortUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :short_urls do |t|
      t.string :original_url, null: false
      t.string :short_code, null: true
      t.string :title, null: true
      t.string :logo, null: true
      t.integer :visits_count, default: 0
      t.timestamps
    end

    add_index :short_urls, :original_url, unique: true
  end
end
