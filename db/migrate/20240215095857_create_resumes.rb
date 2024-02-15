class CreateResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :position
      t.text :summary
      t.string :degree
      t.string :college
      t.string :university
      t.string :company_name
      t.integer :experience
      t.text :experience_summary

      t.timestamps
    end
  end
end
