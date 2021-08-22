json.extract! student, :id, :name, :run, :email, :address, :phone, :generation, :end_date, :created_at, :updated_at
json.url student_url(student, format: :json)
