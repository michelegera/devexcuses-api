# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Excuse, type: :model do
  # Validations
  it { is_expected.to validate_presence_of(:text) }
end
