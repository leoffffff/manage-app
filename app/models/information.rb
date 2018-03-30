class Information < ActiveRecord::Base
  attr_accessible :QQ, :address, :area, :birthday, :censuc_register, :economic, :email, :fixed_phone, :height, :marriage, :name, :school_number, :tell_phone, :weight, :zip_code, :user_id

  belongs_to :user

  def self.get_info(current_user_id)
    @information = Information.find_by_user_id(current_user_id)
    return @information
  end

end
