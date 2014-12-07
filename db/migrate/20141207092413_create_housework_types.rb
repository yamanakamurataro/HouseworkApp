class CreateHouseworkTypes < ActiveRecord::Migration
  def change
    create_table :housework_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
