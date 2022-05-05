class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destoy]
  after_action :verify_policy_scoped, only: [:index, :show, :destoy], unless: :skip_pundit?

  def index
    @user = current_user
    @bookings = policy_scope(Booking)
    @user_bookings = []
    @bookings.each do |booking|
      @user_bookings << booking if booking.user == current_user
    end
    return @user_bookings
  end

  def show
  end

  def new
    @user = current_user
    @bird = Bird.find(params[:bird_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @user = current_user
    @bird = Bird.find(params[:bird_id])
    @booking = Booking.new(user: @user, bird: @bird)
    authorize @booking
    @booking.save!
    if @booking.save!
      redirect_to bird_path(@bird)
      @booked = true
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @bookmark.destroy
    redirect_to bird_path(@booking.bird)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

end
