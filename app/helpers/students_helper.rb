module StudentsHelper
  def img_for_slider(student, student_photo)
    if student_photo.file?
      content_tag :div do
        image_tag(student_photo.url(:large),
                  class: 'img-responsive',
                  alt: "#{student.name} application.",
                  title: "#{student.name} application."
        )
      end
    end
  end
end
