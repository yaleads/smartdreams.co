class Student < ActiveRecord::Base
  def path
    student_path(self.url)
  end

  has_attached_file :photo1,
                    :styles => {:large => "1200x800", :medium => "600x400", :small => "300x200" },
                    :url  => "/assets/students/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/students/:id/:style/:basename.:extension"
  validates_attachment_size :photo1, :less_than => 1000.kilobytes
  validates_attachment_content_type :photo1, :content_type => ['image/jpeg', 'image/jpg']

  has_attached_file :photo2,
                    :styles => {:large => "1200x800", :medium => "600x400", :small => "300x200" },
                    :url  => "/assets/students/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/students/:id/:style/:basename.:extension"
  validates_attachment_size :photo2, :less_than => 1000.kilobytes
  validates_attachment_content_type :photo2, :content_type => ['image/jpeg', 'image/jpg']

  has_attached_file :photo3,
                    :styles => {:large => "1200x800", :medium => "600x400", :small => "300x200" },
                    :url  => "/assets/students/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/students/:id/:style/:basename.:extension"
  validates_attachment_size :photo3, :less_than => 1000.kilobytes
  validates_attachment_content_type :photo3, :content_type => ['image/jpeg', 'image/jpg']


  validates :name, :presence => true
  validates :university, :presence => true
  validates :description, :presence => true
  validates :photo1, :presence => true

  validates :name, length: {maximum: 50}
  validates :university, length: {maximum: 200}
  validates :description, length: {minimum: 20}

end
