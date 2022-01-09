# frozen_string_literal: true

class ApiVersion
  attr_reader :version, :default

  def initialize(version, default: false)
    @version = version
    @default = default
  end

  def matches?(request)
    check_headers(request.headers) || default
  end

  private

  def check_headers(headers)
    accept = headers[:accept]
    accept&.include?("application/vnd.excuses.#{version}+json")
  end
end
