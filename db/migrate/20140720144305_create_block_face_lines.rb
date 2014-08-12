class CreateBlockFaceLines < ActiveRecord::Migration
  def change
    create_table :block_face_lines do |t|

      t.timestamps
    end
  end
end
