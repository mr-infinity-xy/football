class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.references :player, index: true
      t.references :match, index: true
      t.integer :singles
      t.integer :doubles
      t.integer :boundaries
      t.integer :sixes
      t.integer :total

    end
  end
end
