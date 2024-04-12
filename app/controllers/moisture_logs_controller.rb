# frozen_string_literal: true

class MoistureLogsController < ApplicationController
  before_action :set_moisture_log, only: [:show, :update, :destroy]

  def index
    @moisture_logs = MoistureLog.all
    respond_to do |format|
      format.json {render :json => @moisture_logs}
    end
  end

  def show
    render json: @moisture_log
  end

  def create
    @moisture_log = MoistureLog.new(moisture_log_params)

    respond_to do |format|
      if @moisture_log.save
        flash[:success] = 'Moisture log was successfully created.'
        format.html {redirect_to moisture_log_url(@moisture_log), notice: 'Moisture log was successfully created.'}
        format.json {render :show, status: :created, location: @moisture_log}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @moisture_log.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  def update
  end

  private

  def set_moisture_log
    @moisture_log = MoistureLog.find(params[:id])
  end

  private

  def moisture_log_params
    params.require(:moisture_log_param).permit(:sensor_id, :sensor_value, :time)
  end

end
