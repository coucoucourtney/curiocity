class Api::V1::BuildingsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_building, only: [:show, :update, :destroy]
  # after_action :set_building, only: [:create]

  def index
    @buildings = Building.order(:name)
  end

  def update
    if @building.update(building_params)
      render :show
    else
      render_errors
    end
  end

  def create
    p building_params
    @building = Building.new(building_params)
    if @building.save
      p @building
      render :show, status: :created
    else
      render_errors
    end
  end

  def show
  end

  def destroy
    @building.destroy
    head :no_content
  end

  private

  def set_building
    @building = Building.find(params[:id])
    # @user = @building.user
  end

  def render_errors
    render json: { errors: @building.errors.full_messages }
  end

  def building_params
    params.require(:building).permit(:name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score)
  end
end
