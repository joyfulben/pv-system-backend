class SiteOutputsController < ApplicationController
  before_action :set_site_output, only: [:index, :show, :destroy]

  # GET /site_outputs
  def index
    @site_outputs = SiteOutput.all

    render json: @site_outputs
  end

  # GET /site_outputs/1
  def show
    render json: @site_output
  end

  # POST /site_outputs
  def create
    @site_output = SiteOutput.new(site_output_params)
    @site_output.user_id = params[:user_id]

    if @site_output.save
      render json: @site_output, status: :created, location: @site_output
    else
      render json: @site_output.errors, status: :unprocessable_entity
    end
  end


  # DELETE /site_outputs/1
  def destroy
    @site_output.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_output
      @site_output = SiteOutput.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def site_output_params
      params.require(:site_output).permit(:location, :sys_cap, :ac_output, :dc_output, :month)
    end
end
