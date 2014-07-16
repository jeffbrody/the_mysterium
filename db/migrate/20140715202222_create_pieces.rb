class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :instrumentation
      t.text :notes
      t.integer :duration
      t.date :last_performed
      t.date :published

      t.timestamps
    end
  end
end
