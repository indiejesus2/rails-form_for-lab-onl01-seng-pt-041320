class SchoolClassesController < ApplicationController

        def index
            @courses = SchoolClass.all
        end
        
        def show
            course
        end
    
        def new
            @course = SchoolClass.new
        end
    
        def create
            @course = SchoolClass.new(course_params(:title, :room_number))
            @course.save
            redirect_to school_class_path(@course)
        end
    
        def edit
            course
        end
    
        def update
            course
            @course.update(course_params(:title, :room_number))
            redirect_to school_class_path(@course)
        end
    
        private
    
        def course_params(*args)
            # byebug
            params.require(:school_class).permit(*args)
        end
    
        def course
            @course = SchoolClass.find(params[:id])
        end
    
end
