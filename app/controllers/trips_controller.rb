class TripsController < ApplicationController
    # INSTALL PUNDIT before_action :set_trip, only: [:show, :edit, :update, :destroy]

    def index
        @trips = Trip.all
    end

    def new
        @trip = current_user.trips.new
    end

    def create
        @trip = current_user.trips.new(trip_params)
        @trip.user_id = current_user.id
        if @trip.save!
            redirect_to trips_path
        else
            render :new
        end
    end

    def show
        @trip = Trip.find(params[:id])
        @step = Step.new
        @steps = @trip.steps
    end

    def destroy
        @trip = Trip.find(params[:id])
        @trip.destroy
        redirect_to trips_path
    end

    private

    def trip_params
        params.require(:trip).permit(:name, :starting_date, :end_date)
    end
  
    # PUNDIT
    # def set_trip
    #   @trip = Trip.find(params[:id])
    #   authorize @trip
    # end
end
