class StudentSessionsController < ApplicationController
  before_action :set_student_session, only: [:show, :edit, :update, :destroy]

  # GET /student_sessions
  # GET /student_sessions.json
  def index
    @student_sessions = StudentSession.all
    @sessions = Session.all
  end

  # GET /student_sessions/new
  def new
    @student_session = StudentSession.new
  end

  # GET /student_sessions/1/edit
  def edit
  end

  # POST /student_sessions
  # POST /student_sessions.json
  def create
    @student_session = StudentSession.new(student_session_params)

    respond_to do |format|
      if @student_session.save
        format.html { redirect_to student_sessions_path, notice: 'You successfully signed up!' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /student_sessions/1
  # PATCH/PUT /student_sessions/1.json
  def update
    respond_to do |format|
      if @student_session.update(student_session_params)
        format.html { redirect_to student_sessions_path, notice: 'Student session was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /student_sessions/1
  # DELETE /student_sessions/1.json
  def destroy
    @student_session.destroy
    respond_to do |format|
      format.html { redirect_to student_sessions_url, notice: 'Class participation canceled.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_session
      @student_session = StudentSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_session_params
      params.require(:student_session).permit(:student_id, :session_id, :certainty)
    end
end
