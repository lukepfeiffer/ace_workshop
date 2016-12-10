class Workshop < ActiveRecord::Migration[5.0]
  def change
    create_table :workshops do |t|
      t.string :title
      t.string :powerpoint_link
      t.string :embed_url
      t.string :publisher
      t.text :show_notes
      t.date :publish_date
      t.timestamps
    end
  end
end
