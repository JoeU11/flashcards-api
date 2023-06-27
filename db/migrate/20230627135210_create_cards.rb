class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :term
      t.string :description
      t.integer :familiarity

      t.timestamps
    end
  end
end
