class TransportationsController < ApplicationController
    def create
        @trip = Trip.find(params[:trip_id])
        @transportation = Transportation.new(transportation_params)
        @transportation.trip = @trip
        if @transportation.save
          redirect_to trip_path(@trip)
        else
          render 'trips/show'
        end
    end

    def destroy
        @transportation = Transportation.find(params[:id])
        @trip = @transportation.trip
        @transportation.destroy
        redirect_to trip_path(@trip)
    end
end
