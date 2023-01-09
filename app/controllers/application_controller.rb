# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  around_action :set_locale

  def set_locale(&)
    [params[:locale], extract_locale, I18n.default_locale].each do |locale|
      if locale && I18n.available_locales.index(locale.to_sym)
        I18n.locale = locale
        break
      end
    end

    I18n.with_locale(locale, &)
  end

  def extract_locale
    request.env['HTTP_ACCEPT_LANGUAGE']&.scan(/^[a-z]{2}/)&.first
  end
end
