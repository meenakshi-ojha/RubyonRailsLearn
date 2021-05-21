class CoursesController < ApplicationController
  http_basic_authenticate_with name: "meenakshi", password: "secret", except: [:index, :show]
    def index
        @department=Department.find(params[:department_id])
    end
    def show
        @course=Course.find(params[:id])
    end
    def new
        @department=Department.find(params[:department_id])
        @course=@department.courses.build

      end
      def create
        @course= Course.create(course_params)
    
        if @course.save
          redirect_to department_courses_path
        else
          render :new
        end
      end
      def edit
        @department=Department.find(params[:department_id])
        @course=Course.find(params[:id])
      end
     def update
      @department=Department.find(params[:department_id])
      @course=Course.find(params[:id])

      if @course.update(course_params)
        redirect_to department_course_path(@course)
      else
        render :edit
      end
    end
      def destroy
        @course = Course.find(params[:id])
        @course.destroy
    
        redirect_to root_path
      end
      private
      def course_params
        params.require(:course).permit(:name,:department_id)
      end

end
