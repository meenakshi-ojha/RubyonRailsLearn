class StudentsController < ApplicationController
  def index
    @students =Student.all
    @departments=Department.all
    @courses=Course.all
  end
  def show
    @student=Student.find(params[:id])
  end
  def new
    @student=Student.new
  end
  def create
    @student = Student.create(student_params)

    if @student.save
      redirect_to @student
    else
      render :new
    end
  end
  def edit
    @student=Student.find(params[:id])
  end
 def update
  @student=Student.find(params[:id])
  if @student.update(student_params)
    redirect_to @student
  else
    render :edit
  end
end
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to root_path
  end
  

    
    
    private
    def student_params
      params.require(:student).permit(:name, :contact,:email,:department_id,:course_id)
    end


end
