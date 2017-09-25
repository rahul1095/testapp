class CreateFinalresults < ActiveRecord::Migration[5.0]
  def change
    create_table :finalresults do |t|
      t.boolean :result
      t.integer :user_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
