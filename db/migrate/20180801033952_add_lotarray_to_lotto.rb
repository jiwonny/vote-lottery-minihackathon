class AddLotarrayToLotto < ActiveRecord::Migration[5.0]
  def change
    add_column :lottos, :lotarray, :text, default: [], array:true
  end
end
