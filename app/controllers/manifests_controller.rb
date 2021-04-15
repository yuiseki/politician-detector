class ManifestsController < ApplicationController
  before_action :set_manifest, only: [:show, :update, :destroy]

  # GET /manifests
  def index
    @manifests = Manifest.all

    render json: @manifests
  end

  # GET /manifests/1
  def show
    render json: @manifest
  end

  # POST /manifests
  def create
    @manifest = Manifest.new(manifest_params)

    if @manifest.save
      render json: @manifest, status: :created, location: @manifest
    else
      render json: @manifest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /manifests/1
  def update
    if @manifest.update(manifest_params)
      render json: @manifest
    else
      render json: @manifest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /manifests/1
  def destroy
    @manifest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manifest
      @manifest = Manifest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def manifest_params
      params.require(:manifest).permit(:text, :source)
    end
end
