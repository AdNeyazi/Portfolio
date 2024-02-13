class CreateAboutContents < ActiveRecord::Migration[7.0]
  def change
    create_table :about_contents do |t|
      t.string :title
      t.string :subtitle
      t.string :image
      t.string :author_name
      t.text :author_bio
      t.string :contact_information
      t.text :skills
      t.text :education
      t.text :experience
      t.text :interests
      t.text :mission_statement
      t.text :testimonials
      t.text :achievements
      t.text :publications
      t.text :timeline
      t.text :external_links
      t.text :content

      t.timestamps
    end
  end
end
