class Api::V1::CheckpointsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_checkpoint, only: [:show, :update, :destroy]
  # after_action :set_checkpoint, only: [:create]

  def index
    # @checkpoints = Checkpoint.all
    @route = Route.find(params[:route_id])
    @checkpoints = @route.checkpoints
    # render json: {
    #   checkpoints: @checkpoints.to_a
    # }
  end

  def update
    if @checkpoint.update(checkpoint_params)
      render :show
    else
      render_errors
    end
  end

  def create
    p checkpoint_params
    @checkpoint = Checkpoint.new(checkpoint_params)
    @route = Route.find(params[:route_id])
    @checkpoint.route = @route
    if @checkpoint.save
      p @checkpoint
      # render :show, status: :created
      render json: {msg: "Hello"}
    else
      render_errors
    end
  end

  def show
  end

  def destroy
    @checkpoint.destroy
    head :no_content
  end

  private

  def set_checkpoint
    @checkpoint = Checkpoint.find(params[:id])
  end

  def render_errors
    render json: { errors: @checkpoint.errors.full_messages }
  end

  def checkpoint_params
    params.require(:checkpoint).permit(:id, :route_id, :building_id)
  end
end
