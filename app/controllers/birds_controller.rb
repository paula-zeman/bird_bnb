class BirdsController < ApplicationController
  before_action :set_bird, only: [:show, :edit, :destoy, :update]

  def index
    @birds = Bird.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @bird = Bird.new
  end

  def create
    @bird = Bird.new(bird_params)
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
    params.require(:bird).permit(:name, :type, :price, :location, :user_id)
  end
end
