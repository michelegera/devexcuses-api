module Response
  def json_response(object, status = :ok, blueprint: Blueprinter::Base)
    render json: blueprint.render(object), status: status
  end
end
