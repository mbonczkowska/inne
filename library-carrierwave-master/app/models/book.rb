class Book < ActiveRecord::Base

  mount_uploader :cover, CoverUploader

  attr_accessible :author, :isbn, :price_pln, :title, :tag_list,
    :cover, :remove_cover, :cover_cache, :remote_cover_url,
    :crop_x, :crop_y, :crop_w, :crop_h

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h

  # acts_as_taggable
  acts_as_taggable_on :tags
  # ActsAsTaggableOn::TagList.delimiter = " "
  # ActsAsTaggableOn.delimiter = ' ' # use space as delimiter

  def price_pln
    price.to_d / 100 if price
  end

  def price_pln=(pln)
    self.price = pln.to_d * 100 if pln.present?
  end

  after_update :crop_cover

  def crop_cover
    cover.recreate_versions! if crop_x.present?
  end

end
