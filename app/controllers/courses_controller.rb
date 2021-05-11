class CoursesController < ApplicationController
    def index
        @department=Department.find(params[:department_id])
    end
    def show
        @course=Course.find(params[:id])
    end
    def new
        @department=Department.find(params[:department_id])
        @course=Course.new
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

      if @Course.update(course_params)
        redirect_to department_courses_path
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
