class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.integer :company_id
      t.string :company_name
      t.string :company_size
      t.string :company_logo
      t.string :company_website
      t.string :email
      t.integer :phone
    end
  end
end
