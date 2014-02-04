class CreateImageSlidesImageSlides < ActiveRecord::Migration

  def up
    create_table :refinery_image_slides do |t|
      t.string  :title
      t.integer :title_as_image_id
      t.string  :title_as_image_position
      t.integer :position
      t.integer :image_slideshow_id
      t.integer :image_id
      t.text    :caption
      t.string  :caption_position
      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-image_slides"})
    end

    drop_table :refinery_image_slides

  end

end
