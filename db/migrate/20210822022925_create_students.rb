class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :run
      t.string :email
      t.string :address
      t.string :phone
      t.integer :generation
      t.date :end_date

      t.timestamps
    end
  end
end
