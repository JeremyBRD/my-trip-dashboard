class TransportationsController < ApplicationController
  before_action :set_step, only: [:create, :edit, :update, :destroy]

  def new
  end
  
  def create
    @transportations = Transportation.new(transportations_params)
    @transportations.step = @step
    if @transportations.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @transportations.update(transportations_params)
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  def destroy
    @transportations.destroy
    redirect_to trip_path(@trip)
  end

  private

  def transportations_params
    params.require(:transportations).permit(:name, :address, :type)
  end

  def set_step
    @step = Step.find(params[:step_id])
  end
end
