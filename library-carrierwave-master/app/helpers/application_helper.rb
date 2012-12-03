module ApplicationHelper

  # https://github.com/rails/rails/issues/3080#issuecomment-3919831

  # def cover_tag(source, options={})
  #   if source.blank?
  #     image_tag("blank.png", data: { src: "holder.js/60x60" })
  #   else
  #     image_tag(source, options)
  #   end
  # end

  def cover_tag(source, options={})
    #super(source, options) if source.present?
    image_tag(source, options) if source.present?
  end

end
