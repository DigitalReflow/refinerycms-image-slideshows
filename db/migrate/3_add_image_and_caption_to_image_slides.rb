class AddImageAndCaptionToImageSlides < ActiveRecord::Migration
  def change
    add_column :refinery_image_slides, :image_id, :integer
    add_column :refinery_image_slides, :caption, :text
    add_column :refinery_image_slides, :caption_color, :string
  end
end
