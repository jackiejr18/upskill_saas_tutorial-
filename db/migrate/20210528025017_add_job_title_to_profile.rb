class AddJobTitleToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :job_title, :string
  end
end
