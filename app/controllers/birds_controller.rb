class BirdsController < ApplicationController
  before_action :set_bird, only: [:show, :edit, :destoy, :update]

  def index
    @birds = policy_scope(Bird)

      # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @birds.geocoded.map do |bird|
      {
        lat: bird.latitude,
        lng: bird.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bird: bird }),
				image_url: helpers.asset_url("duckling.jpg")
      }
    end
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
      redirect_to bird_path(@bird), status: :unprocessable_entity
    else
      render :new, notice: "Your bird could not be created."
    end
  end

  def update
    if @bird.update(bird_params)
      redirect_to @bird, status: :unprocessable_entity
    else
      render :edit, notice: "Bird was successfully updated."
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
    params.require(:bird).permit(:name, :breed, :price, :location, :image)
  end
end
