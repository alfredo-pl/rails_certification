class Student < ApplicationRecord
    has_many :students_courses
    has_many :courses , through: :students_courses
end
