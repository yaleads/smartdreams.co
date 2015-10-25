class AddAttachmentPhotosToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.attachment :photo1
      t.attachment :photo2
      t.attachment :photo3
    end
  end

  def self.down
    remove_attachment :students, :photo1
    remove_attachment :students, :photo2
    remove_attachment :students, :photo3
  end
end
