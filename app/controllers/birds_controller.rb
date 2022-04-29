class BirdsController < ApplicationController
  before_action :set_bird, only: [:show, :edit, :destoy, :update]

  def index
    @birds = Bird.all
  end

  def show
  end

  def new
    @bird = Bird.new
    authorize @bird
  end

  def create
    @bird = Bird.new(bird_params)
    @bird.user = current_user
    if @bird.save
      redirect_to bird_path(@bird)
    else
      render :new
    end
  end
  private

  def set_bird
    @bird = Bird.find(params[:id])
  end

  def bird_params
    params.require(:bird).permit(:name, :type, :price, :location)
  end
end
