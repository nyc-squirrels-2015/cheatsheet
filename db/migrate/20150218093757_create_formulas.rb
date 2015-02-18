class CreateFormulas < ActiveRecord::Migration
  def change
    create_table :formulas do |t|
      t.string :name
      t.string :content
      t.references :user
      t.references :category

      t.timestamps
    end
  end
end
