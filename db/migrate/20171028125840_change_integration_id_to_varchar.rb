class ChangeIntegrationIdToVarchar < ActiveRecord::Migration[5.1]
  def change
    change_column :people, :integration_id, :string
  end
end
