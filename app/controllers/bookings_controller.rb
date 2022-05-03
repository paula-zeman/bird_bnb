class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :destoy, :update]

  def index

  end

  def show

  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

end
