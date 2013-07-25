# This migration comes from comfy_imprint (originally 20130725162311)
class CreateComfyImprintLocations < ActiveRecord::Migration
  def change
    create_table :comfy_imprint_locations do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :attn
      t.string :phone_main
      t.string :phone_additional
      t.string :fax
      t.string :email
      t.string :url
      t.string :map_link
      t.string :picture_link

      t.text :note
      t.timestamps
    end
  end
end
