# frozen_string_literal: true

class SessionsController < ApplicationController
  before_action :set_session, only: %i[show update destroy]

  # GET /sessions
  def index
    @sessions = Session.all

    render json: @sessions
  end

  # GET /sessions/1
  def show
    render json: @session
  end

  # POST /sessions
  def create
    @session = Session.new(session_params)

    if @session.save
      render json: @session, status: :created, location: @session
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sessions/1
  def update
    if @session.update(session_params)
      render json: @session
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sessions/1
  def destroy
    @session.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_session
    @session = Session.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def session_params
    params.require(:session).permit(:date, :hours_worked, :hours_recorded, :notes)
  end
end
