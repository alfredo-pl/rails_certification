class AddRegionToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :region, :string
  end
end
