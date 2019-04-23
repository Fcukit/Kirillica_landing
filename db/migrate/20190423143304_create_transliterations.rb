class CreateTransliterations < ActiveRecord::Migration[5.2]
  def change
    create_table :transliterations do |t|
      t.string :input_phrase
      t.string :output_phrase
      t.string :mode

      t.timestamps
    end
  end
end
