class CreateVoters < ActiveRecord::Migration[5.0]
  def change
    create_table :voters do |t|
      t.string :name
      t.integer :studentid
      t.integer :phonenum

      t.timestamps
    end
  end
end
