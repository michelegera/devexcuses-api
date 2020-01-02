class Excuse < ApplicationRecord
  self.implicit_order_column = 'created_at'

  validates_presence_of :text
end
