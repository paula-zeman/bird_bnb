class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destoy]

  def index
    @user = current_user
    @bookings = Booking.all
    @user_bookings = []
    @bookings.each do |booking|
      @user_bookings << booking if booking.user == current_user
    end
    return @user_bookings
  end

  def show
  end

  # def new
  #   @user = current_user
  #   @booking = Booking.new
  # end

  def create
    @user = current_user
    @bird = params.require(:booking).permit(:booked_bird)
    @booking = Booking.new(user: @user, booked_bird: @bird)
    @booking.bird = @bird
    @booking.save!
    redirect_to bird_path(@bird) if @booking.save!
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
