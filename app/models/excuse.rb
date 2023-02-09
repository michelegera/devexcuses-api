# frozen_string_literal: true

class Excuse < ActiveYaml::Base
  set_root_path Rails.env.test? ? Rails.root.join('spec') : Rails.root.join('data')

  field :text_en
  field :text_fr

  def text
    send("text_#{I18n.locale}")
  end
end
