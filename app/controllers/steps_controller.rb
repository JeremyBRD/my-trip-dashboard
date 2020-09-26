class StepsController < ApplicationController
    def create
        @trip = Trip.find(params[:trip_id])
        @step = Step.new(step_params)
        @step.trip = @trip
        if @step.save
          redirect_to trip_path(@trip)
        else
          render 'trips/show'
        end
    end

    def destroy
        @step = Step.find(params[:id])
        @trip = @step.trip
        @step.destroy
        redirect_to trip_path(@trip)
    end

    private

    def step_params
      params.require(:step).permit(:name, :address)
    end
end
