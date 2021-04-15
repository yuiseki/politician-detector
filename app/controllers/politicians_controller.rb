class PoliticiansController < ApplicationController
  before_action :set_politician, only: [:show, :update, :destroy]

  # GET /politicians
  def index
    @politicians = Politician.all

    render json: @politicians
  end

  # GET /politicians/1
  def show
    render json: @politician
  end

  # POST /politicians
  def create
    @politician = Politician.new(politician_params)

    if @politician.save
      render json: @politician, status: :created, location: @politician
    else
      render json: @politician.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /politicians/1
  def update
    if @politician.update(politician_params)
      render json: @politician
    else
      render json: @politician.errors, status: :unprocessable_entity
    end
  end

  # DELETE /politicians/1
  def destroy
    @politician.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politician
      @politician = Politician.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def politician_params
      params.fetch(:politician, {})
    end
end
