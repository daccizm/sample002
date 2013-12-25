class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :unit, index: true

      t.timestamps
    end
  end
end
