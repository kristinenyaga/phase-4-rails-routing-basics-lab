class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all
    newstudents=students.order('grade desc')
    render json: newstudents
  end

  def highest_grade
    students = Student.all
    higheststudent=students.order('grade desc').limit(1)
    render json: higheststudent

  end
end
