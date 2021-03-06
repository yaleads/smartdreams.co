class StudentsController < ApplicationController
  before_action :set_student, only: [:show]

  def index
    @students = Student.order(:sort)
  end

  def show
  end

  def new
    @student = Student.new()
  end

  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.js {
          flash[:notice] = "New ask successfully added."
          flash.keep(:notice)
          render js: "window.location.pathname = #{student_path(@student).to_json}"
        }
        format.html {redirect_to root_path}
      else
        format.js{ render :error }
      end
    end
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :university, :description, :photo1, :photo2, :photo3, :goal)
    end
end
