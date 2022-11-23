# frozen_string_literal: true

module Response
  def json_response(object, status = :ok, blueprint: Blueprinter::Base)
    render json: blueprint.render(object), status:
  end
end
