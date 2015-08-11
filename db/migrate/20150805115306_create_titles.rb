class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
      t.text :desc
      t.references :collection, index: true

      t.timestamps
    end
  end
end
