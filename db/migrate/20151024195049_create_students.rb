class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :university
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
