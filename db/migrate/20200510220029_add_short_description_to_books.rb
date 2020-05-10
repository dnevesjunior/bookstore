class AddShortDescriptionToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :short_description, :string
  end
end
