class AddContactEmailToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :contact_email, :string
  end
end
