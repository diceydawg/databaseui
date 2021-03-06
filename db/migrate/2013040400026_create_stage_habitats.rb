class CreateStageHabitats < ActiveRecord::Migration
  def change
    create_table :stage_habitats do |t|
      t.integer :citation_id
      t.integer :stage_id
      t.string :habitat
      t.text :comment
      t.string :datum
      t.integer :user_id
      t.integer :project_id
      t.boolean :mod
      t.boolean :approved

      t.timestamps
    end
  end
end
