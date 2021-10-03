class AddCheckcodeToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :checkcode, :string
  end
end
