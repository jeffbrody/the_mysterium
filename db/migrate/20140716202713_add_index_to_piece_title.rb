class AddIndexToPieceTitle < ActiveRecord::Migration
  def change
  	add_index :pieces, :title, unique:true
  	add_index :pieces, :duration
  	add_index :pieces, :last_performed
  end
end
