class BirdsController < ApplicationController
  before_action :set_bird, only: [:show, :edit, :destoy, :update]

  def index
    @birds = policy_scope(Bird)
  end

  def show
  end

  def new
    @bird = Bird.new
    authorize @bird
  end

  def edit
  end

  def create
    @bird = Bird.new(bird_params)
    @bird.user = current_user
    authorize @bird
    if @bird.save
      redirect_to bird_path(@bird)
    else
      render :new, notice: "Your bird could not be created."
    end
  end

  def update
    if @bird.update(bird_params)
      redirect_to @bird, notice: "Bird was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @bird.destroy
    redirect_to birds_url, notice: "Bird was successfully destroyed."
  end
  private

  def set_bird
    @bird = Bird.find(params[:id])
    authorize @bird
  end

  def bird_params
    params.require(:bird).permit(:name, :type, :price, :location)
  end
end
