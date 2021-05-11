class StudentsController < ApplicationController
  def index
    @department=Department.find(params[:department_id])
  end
  def show
    @department=Department.find(params[:department_id])
    @student=Student.find(params[:id])
  end
  def new
    @department=Department.find(params[:department_id])
    @student=@department.students.build
  end
  def create
    @department = Department.find(params[:department_id])
    @student = @department.students.create(student_params)
    if @student.save
      puts "A new student has been created"
    end
    redirect_to department_students_path
  end
  def edit
    @department=Department.find(params[:department_id])
    @student=@department.students.find(params[:id])
  end
 def update
  @department=Department.find(params[:department_id])
  @student=@department.students.find(params[:id])
  # @student=Student.find(params[:id])
  if @student.update(student_params)
    redirect_to department_student_path
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
