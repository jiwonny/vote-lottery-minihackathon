class CreatePledges < ActiveRecord::Migration[5.0]
  def change
    create_table :pledges do |t|
      t.string :title
      t.text :content
      t.text :content2
      t.timestamps
    end
  end
end
