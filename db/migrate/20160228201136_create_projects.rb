class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end