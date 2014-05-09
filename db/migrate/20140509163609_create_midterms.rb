class CreateMidterms < ActiveRecord::Migration
  def change
    create_table :midterms do |t|
      t.string :school
      t.string :courseCode
      t.integer :year
      t.boolean :corrected
      t.string :professor
      t.string :semester

      t.timestamps
    end
  end
end
