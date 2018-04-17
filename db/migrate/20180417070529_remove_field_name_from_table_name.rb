class RemoveFieldNameFromTableName < ActiveRecord::Migration[5.1]
  def up
    remove_column :products, :string, :string
  end
end
