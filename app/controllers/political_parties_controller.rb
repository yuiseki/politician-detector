class PoliticalPartiesController < ApplicationController
  before_action :set_political_party, only: [:show, :update, :destroy]

  # GET /political_parties
  def index
    @political_parties = PoliticalParty.all

    render json: @political_parties
  end

  # GET /political_parties/1
  def show
    render json: @political_party
  end

  # POST /political_parties
  def create
    @political_party = PoliticalParty.new(political_party_params)

    if @political_party.save
      render json: @political_party, status: :created, location: @political_party
    else
      render json: @political_party.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /political_parties/1
  def update
    if @political_party.update(political_party_params)
      render json: @political_party
    else
      render json: @political_party.errors, status: :unprocessable_entity
    end
  end

  # DELETE /political_parties/1
  def destroy
    @political_party.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_political_party
      @political_party = PoliticalParty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def political_party_params
      params.fetch(:political_party, {})
    end
end
