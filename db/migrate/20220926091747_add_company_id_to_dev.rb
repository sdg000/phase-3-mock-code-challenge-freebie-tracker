class AddCompanyIdToDev < ActiveRecord::Migration[6.1]
  def change
    add_column :devs, :company_id, :integer
  end
end
