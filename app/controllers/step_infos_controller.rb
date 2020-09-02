class StepInfosController < ApplicationController
    before_action :set_step, only: [:create, :edit, :update, :destroy]

    # shall we open a pop-up in order to edit this ?
    def new
    end
    
    def create
        # no need to identify trip because we have a unique id for step ?
        @step_infos = StepInfo.new(step_infos_params)
        @step_infos.step = @step
        if @step_infos.save
            redirect_to trip_path(@trip)
          else
            # if it does not work we want to go back to the 'new' form
            render :new
        end
    end

    # shall we open a pop-up in order to edit this ?
    def edit
    end

    def update
        if @step_infos.update(step_infos_params)
            redirect_to trip_path(@trip)
        else
            render :edit
        end
    end

    def destroy
        @step_infos.destroy
        redirect_to trip_path(@trip)
    end

    private

    def step_infos_params
      params.require(:step_infos).permit(:name, :address, :type)
    end

    def set_step
        @step = Step.find(params[:step_id])
    end
end
