class Api::V1::UsersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_user, only: [:show, :update, :destroy]
  def index
    @users = User.all
    # render json: @stories
  end

  def show
  end

  def create
    user_params
    @user = User.new(user_params)
    if @user.save
      @user
      render :show, status: :created
    else
      render_errors
    end
  end

  def update
    if @user.update(user_params)
      render :show
    else
      render_errors
    end
  end


  def destroy

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def render_errors
    render json: { errors: @user.errors.full_messages }
  end

  def user_params
    params.require(:user).permit(:id, :open_id, :wechat_name, :avatar, :email, :language, :gender, :level, :description, :favoritor_score, :favoritor_total, :favoritable_score, :favoritable_total)
  end

end
