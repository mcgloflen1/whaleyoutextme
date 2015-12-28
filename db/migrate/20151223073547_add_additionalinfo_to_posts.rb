class AddAdditionalinfoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :additional_info, :text
  end
end
