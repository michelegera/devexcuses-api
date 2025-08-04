# frozen_string_literal: true

module V1
  class ExcusesController < ApplicationController
    before_action :set_excuse, only: [:show]

    # GET /excuses
    def index
      @excuses = Excuse.all.to_a
      json_response(@excuses, blueprint: ExcuseBlueprint)
    end

    # GET /excuses/:id
    def show
      json_response(@excuse, blueprint: ExcuseBlueprint)
    end

    # GET /excuses/random
    def random
      @excuse = Excuse.all.sample
      json_response(@excuse, blueprint: ExcuseBlueprint)
    end

    private

    def set_excuse
      @excuse = Excuse.find(params[:id])
    end
  end
end
