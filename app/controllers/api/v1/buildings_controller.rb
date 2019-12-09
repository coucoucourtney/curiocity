class Api::V1::BuildingsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_building, only: [:show, :update, :destroy]
  # after_action :set_building, only: [:create]
  before_action :set_current_user, only: [:show]

  def favorite
    # @current_user = User.find(params[:user_id])
    # @building = Building.find(params[:id])
    puts "params.... #{params}"
    @current_user = User.find(params["favoritor_id"].to_i)
    puts "@current_user .. #{@current_user}"
    @building = Building.find(params[:favoritable_id])
    @current_user.favorite(@building)
    render json: {
      msg: "ok"
    }
  end

  def index
    @user_signed_in = set_current_user
    if params[:query].present?
      # sql_query = "
      # name @@ :query
      # OR architects @@ :query
      # OR district @@ :query
      # OR architectural_style @@ :query
      # OR metro_stop @@ :query
      # "
      @buildings = Building.search_by_all(params[:query])
    else
      @buildings = Building.order(:name)
    end
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

  def set_current_user
    if params[:user_id]
      @current_user = User.find(params[:user_id])
    else
      return false
    end
  end

  def set_building
    @building = Building.find(params[:id])
    # @user = @building.user
  end

  def render_errors
    render json: { errors: @building.errors.full_messages }
  end

  def building_params
    params.require(:building).permit(:id, :name, :year, :architects, :neighborhood, :metro_stop, :photo_slider, :address, :latitude, :longitude, :architectural_style, :contributor_author, :description, :fun_facts, :main_photo_credit, :user_id, :city, :fact_checked, :district, :favoritable_total, :favoritable_score, :main_picture)
  end
end
