class AddFieldsToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :address, :string
    add_column :courses, :name, :string
    add_column :courses, :date, :date
  end
end
