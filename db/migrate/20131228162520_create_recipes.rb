class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.belongs_to :owner

      t.timestamps
    end

    add_index :recipes, :owner_id
  end
end
