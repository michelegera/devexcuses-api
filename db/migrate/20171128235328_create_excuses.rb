# frozen_string_literal: true

class CreateExcuses < ActiveRecord::Migration[5.1]
  def change
    create_table :excuses do |t|
      t.string :text

      t.timestamps
    end
  end
end
