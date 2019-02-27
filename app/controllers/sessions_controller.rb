# frozen_string_literal: true

class SessionsController < ProtectedController
  before_action :set_session, only: %i[show update destroy]

  # GET /sessions
  # def index
  #   # original ApplicationColntroller code
  #   # @sessions = Session.all
  #   @sessions = current_user.sessions.all
  #
  #   render json: @sessions
  # end

  # GET /sessions NEW FOR HANDLEBARS
  # started working on this with Alex and Elizabeth
  def index
    # original ApplicationColntroller code
    # @sessions = Session.all
    puts params
    puts "hello"
    if params[:project_id]
      # send only sessions w certain project id
      # trying to get sessions that belong to a project
    @sessions = current_user.sessions.where('project_id = ?', params[:project_id])
    else
      @sessions = current_user.sessions.all
    end

    render json: @sessions
  end

  # GET /sessions/1
  def show
    render json: @session
  end

  # POST /sessions
  def create
    # original ApplicationColntroller code
    @session = Session.new(session_params)
    # @project = current_user.projects.find(params[:id])
    # @session = current_user.sessions.build(session_params)

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
    # original ApplicationColntroller code
    # @session = Session.find(params[:id])
    @session = current_user.sessions.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def session_params
    params.require(:session).permit(:date, :hours_worked, :hours_recorded, :notes, :project_id)
  end
end
