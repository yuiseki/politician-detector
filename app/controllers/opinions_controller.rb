class OpinionsController < ApplicationController
  before_action :set_opinion, only: [:show, :update, :destroy]

  # GET /opinions
  def index
    @opinions = Opinion.all

    render json: @opinions
  end

  # GET /opinions/1
  def show
    render json: @opinion
  end

  # POST /opinions
  def create
    @opinion = Opinion.new(opinion_params)

    if @opinion.save
      render json: @opinion, status: :created, location: @opinion
    else
      render json: @opinion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /opinions/1
  def update
    if @opinion.update(opinion_params)
      render json: @opinion
    else
      render json: @opinion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /opinions/1
  def destroy
    @opinion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opinion
      @opinion = Opinion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def opinion_params
      params.require(:opinion).permit(:text, :source)
    end
end
