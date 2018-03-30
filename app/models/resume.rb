class Resume < ActiveRecord::Base
  attr_accessible :QQ, :address, :area, :area, :birthday_year, :birthplace, :blog, :education, :email, :form, :height, :job, :marriage, :name, :phone, :profession, :resume_name, :salary, :sex, :user_id, :value, :work_experience

  belongs_to :user

end
