class CreateUserSurveys < ActiveRecord::Migration
  def change
    create_table :user_surveys do |t|
      t.integer :user_id
      t.integer :survey_id
      t.timestamps
    end
    add_index(:user_surveys, [:user_id, :survey_id], unique: true)
  end
end
