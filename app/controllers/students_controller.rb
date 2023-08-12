class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        students = Student.order(grades)
        render json:students
    end
    def highest_grade
        student = Student.order(grade).first
        render json:student
    end
end
