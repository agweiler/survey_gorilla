class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
    t.string :name
    t.integer :created_by
    t.timestamps
    end
  end
end
