class ExcusesController < ApplicationController
  before_action :set_excuse, only: [:show]

  # GET /excuses
  def index
    @excuses = Excuse.all
    json_response(@excuses)
  end

  # GET /excuses/:id
  def show
    json_response(@excuse)
  end

  # GET /excuses/random
  def random
    @excuse = Excuse.order('random()').first
    json_response(@excuse)
  end

  private

  def set_excuse
    @excuse = Excuse.find(params[:id])
  end
end
