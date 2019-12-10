class AddWechatNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wechat_name, :string
  end
end
