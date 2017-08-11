class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.string :constraint
      t.string :inputtestcases
      t.string :outputtestcases
      t.integer :marks
      t.string :difficulty
      t.string :tag

      t.timestamps null: false
    end
  end
end
