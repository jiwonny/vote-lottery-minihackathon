class AddContent2ToPledges < ActiveRecord::Migration[5.0]
  def change
    add_column :pledges, :content2, :text
  end
end
