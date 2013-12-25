class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.references :company, index: true

      t.timestamps
    end
  end
end
