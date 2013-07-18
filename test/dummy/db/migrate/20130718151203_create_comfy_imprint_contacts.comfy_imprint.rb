# This migration comes from comfy_imprint (originally 20130711211512)
class CreateComfyImprintContacts < ActiveRecord::Migration
  def change
    create_table :comfy_imprint_contacts do |t|
      t.string  :name
      t.string  :email
      t.string  :phone
      t.string  :url
      t.string  :company
      t.boolean :is_subscribed
      t.text    :message
      t.timestamps
    end

    add_index :comfy_imprint_contacts, :email
  end
end