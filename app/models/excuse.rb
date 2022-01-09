# frozen_string_literal: true

class Excuse < ApplicationRecord
  self.implicit_order_column = 'created_at'

  validates :text, presence: true
end
