class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integereger :position
      t.integereger :number
      t.string :grade
    end
  end
end
