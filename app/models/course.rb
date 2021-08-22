class Course < ApplicationRecord
    has_many :students_courses
    has_many :students, through: :students_courses
end
