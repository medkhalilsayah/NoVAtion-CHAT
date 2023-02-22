class AddCompanyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :company_id, :integer, null: false, index: true
  end
end
