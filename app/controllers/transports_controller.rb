class TransportsController < ApplicationController
    def create
        @trip = Trip.find(params[:trip_id])
        @transport = Transport.new(transport_params)
        @transport.trip = @trip
        if @transport.save
          redirect_to trip_path(@trip)
        else
          render 'trips/show'
        end
    end

    def destroy
        @transport = Transport.find(params[:id])
        @trip = @transport.trip
        @transport.destroy
        redirect_to trip_path(@trip)
    end
end
