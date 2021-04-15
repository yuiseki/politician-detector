class ElectionsController < ApplicationController
  before_action :set_election, only: [:show, :update, :destroy]

  # GET /elections
  def index
    @elections = Election.all

    render json: @elections
  end

  # GET /elections/1
  def show
    render json: @election
  end

  # POST /elections
  def create
    @election = Election.new(election_params)

    if @election.save
      render json: @election, status: :created, location: @election
    else
      render json: @election.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /elections/1
  def update
    if @election.update(election_params)
      render json: @election
    else
      render json: @election.errors, status: :unprocessable_entity
    end
  end

  # DELETE /elections/1
  def destroy
    @election.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_election
      @election = Election.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def election_params
      params.fetch(:election, {})
    end
end
