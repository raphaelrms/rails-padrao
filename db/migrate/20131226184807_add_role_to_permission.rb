#encoding: utf-8
class AddRoleToPermission < ActiveRecord::Migration
    def change
      add_column :permissions, :role_id, :integer, :limit => 11
      add_foreign_key(:permissions,:roles)
    end
end
