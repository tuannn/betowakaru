class AddDescriptionToCities < ActiveRecord::Migration
  def change
    add_column :cities, :description, :string
  end
end
