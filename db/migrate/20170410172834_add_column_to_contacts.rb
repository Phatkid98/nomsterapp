class AddColumnToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :message, :text
    add_column :contacts, :email, :string
  end
end
