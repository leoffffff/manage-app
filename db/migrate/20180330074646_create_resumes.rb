class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :resume_name
      t.string :name
      t.string :profession
      t.string :birthplace
      t.string :area
      t.string :sex
      t.integer :birthday_year
      t.string :education
      t.string :marriage
      t.integer :height
      t.string :work_experience
      t.string :form
      t.string :job
      t.string :area
      t.string :salary
      t.integer :phone
      t.integer :QQ
      t.string :email
      t.string :blog
      t.string :address
      t.text :value
      t.integer :user_id

      t.timestamps
    end
  end
end
