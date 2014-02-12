module Refinery
  module ImageSlideshows
    class ImageSlide < Refinery::Core::BaseModel
      self.table_name = 'refinery_image_slides'

      attr_accessible :title, :title_as_image_id, :title_as_image_position, :tablet_image_id, :mobile_image_id, :image_id, :caption, :caption_color, :position, :image_slideshow_id

      acts_as_indexed :fields => [:title]

      validates :title, :presence => true
      #validates :image_id, :presence => true

      belongs_to :image_slideshow
      belongs_to :image, :class_name => '::Refinery::Image'
      belongs_to :tablet_image, :class_name => '::Refinery::Image'
      belongs_to :mobile_image, :class_name => '::Refinery::Image'
      belongs_to :title_as_image, :class_name => '::Refinery::Image'

      default_scope order('position asc')

    end
  end
end
