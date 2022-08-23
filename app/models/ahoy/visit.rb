# frozen_string_literal: true

module Ahoy
  class Visit < ApplicationRecord
    self.table_name = 'ahoy_visits'

    # rubocop:disable Rails/HasManyOrHasOneDependent
    has_many :events, class_name: 'Ahoy::Event'
    # rubocop:enable Rails/HasManyOrHasOneDependent
    belongs_to :user, optional: true
  end
end
