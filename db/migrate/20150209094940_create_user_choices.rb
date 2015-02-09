class CreateUserChoices < ActiveRecord::Migration
  def change
    create_table :user_choices do |t|
      t.integer :user_id
      t.integer :choice_id
      t.timestamps
    end
    add_index(:user_choices, [:user_id, :choice_id], unique: true)
  end
end
