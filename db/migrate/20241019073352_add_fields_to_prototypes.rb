class AddFieldsToPrototypes < ActiveRecord::Migration[7.0]
  def change
    add_column :prototypes, :title, :string
    add_column :prototypes, :catch_copy, :string
    add_column :prototypes, :concept, :text
    add_column :prototypes, :image, :string
  end
end
