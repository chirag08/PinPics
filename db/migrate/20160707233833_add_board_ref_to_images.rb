class AddBoardRefToImages < ActiveRecord::Migration
  def change
    add_reference :images, :board, index: true, foreign_key: true
  end
end
