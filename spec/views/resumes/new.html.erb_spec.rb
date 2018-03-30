require 'rails_helper'

RSpec.describe "resumes/new", :type => :view do
  before(:each) do
    assign(:resume, Resume.new(
      :resume_name => "MyString",
      :name => "MyString",
      :profession => "MyString",
      :birthplace => "MyString",
      :area => "MyString",
      :sex => "MyString",
      :birthday_year => 1,
      :education => "MyString",
      :marriage => "MyString",
      :height => 1,
      :work_experience => "MyString",
      :form => "MyString",
      :job => "MyString",
      :area => "MyString",
      :salary => "MyString",
      :phone => 1,
      :QQ => 1,
      :email => "MyString",
      :blog => "MyString",
      :address => "MyString",
      :value => "MyText",
      :user_id => 1
    ))
  end

  it "renders new resume form" do
    render

    assert_select "form[action=?][method=?]", resumes_path, "post" do

      assert_select "input#resume_resume_name[name=?]", "resume[resume_name]"

      assert_select "input#resume_name[name=?]", "resume[name]"

      assert_select "input#resume_profession[name=?]", "resume[profession]"

      assert_select "input#resume_birthplace[name=?]", "resume[birthplace]"

      assert_select "input#resume_area[name=?]", "resume[area]"

      assert_select "input#resume_sex[name=?]", "resume[sex]"

      assert_select "input#resume_birthday_year[name=?]", "resume[birthday_year]"

      assert_select "input#resume_education[name=?]", "resume[education]"

      assert_select "input#resume_marriage[name=?]", "resume[marriage]"

      assert_select "input#resume_height[name=?]", "resume[height]"

      assert_select "input#resume_work_experience[name=?]", "resume[work_experience]"

      assert_select "input#resume_form[name=?]", "resume[form]"

      assert_select "input#resume_job[name=?]", "resume[job]"

      assert_select "input#resume_area[name=?]", "resume[area]"

      assert_select "input#resume_salary[name=?]", "resume[salary]"

      assert_select "input#resume_phone[name=?]", "resume[phone]"

      assert_select "input#resume_QQ[name=?]", "resume[QQ]"

      assert_select "input#resume_email[name=?]", "resume[email]"

      assert_select "input#resume_blog[name=?]", "resume[blog]"

      assert_select "input#resume_address[name=?]", "resume[address]"

      assert_select "textarea#resume_value[name=?]", "resume[value]"

      assert_select "input#resume_user_id[name=?]", "resume[user_id]"
    end
  end
end
