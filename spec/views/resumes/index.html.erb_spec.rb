require 'rails_helper'

RSpec.describe "resumes/index", :type => :view do
  before(:each) do
    assign(:resumes, [
      Resume.create!(
        :resume_name => "Resume Name",
        :name => "Name",
        :profession => "Profession",
        :birthplace => "Birthplace",
        :area => "Area",
        :sex => "Sex",
        :birthday_year => 2,
        :education => "Education",
        :marriage => "Marriage",
        :height => 3,
        :work_experience => "Work Experience",
        :form => "Form",
        :job => "Job",
        :area => "Area",
        :salary => "Salary",
        :phone => 4,
        :QQ => 5,
        :email => "Email",
        :blog => "Blog",
        :address => "Address",
        :value => "MyText",
        :user_id => 6
      ),
      Resume.create!(
        :resume_name => "Resume Name",
        :name => "Name",
        :profession => "Profession",
        :birthplace => "Birthplace",
        :area => "Area",
        :sex => "Sex",
        :birthday_year => 2,
        :education => "Education",
        :marriage => "Marriage",
        :height => 3,
        :work_experience => "Work Experience",
        :form => "Form",
        :job => "Job",
        :area => "Area",
        :salary => "Salary",
        :phone => 4,
        :QQ => 5,
        :email => "Email",
        :blog => "Blog",
        :address => "Address",
        :value => "MyText",
        :user_id => 6
      )
    ])
  end

  it "renders a list of resumes" do
    render
    assert_select "tr>td", :text => "Resume Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Profession".to_s, :count => 2
    assert_select "tr>td", :text => "Birthplace".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Education".to_s, :count => 2
    assert_select "tr>td", :text => "Marriage".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Work Experience".to_s, :count => 2
    assert_select "tr>td", :text => "Form".to_s, :count => 2
    assert_select "tr>td", :text => "Job".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Salary".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Blog".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
