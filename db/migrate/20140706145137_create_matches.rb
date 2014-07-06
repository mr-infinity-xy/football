class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team_a_id
      t.integer :team_b_id
      t.string :date
      t.integer :result


    end
  end
end
