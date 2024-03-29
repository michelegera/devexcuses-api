# frozen_string_literal: true

module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveHash::RecordNotFound do |e|
      json_response({ message: e.message }, :not_found, blueprint: ExceptionBlueprint)
    end
  end
end
