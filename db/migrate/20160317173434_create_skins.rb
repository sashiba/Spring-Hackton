class CreateSkins < ActiveRecord::Migration
  def change
    create_table :skins do |t|
      t.string :name
      t.string :picture

      t.belongs_to :weapon
    end
  end
end
