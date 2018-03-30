require 'rails_helper'

RSpec.describe "resumes/show", :type => :view do
  before(:each) do
    @resume = assign(:resume, Resume.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Resume Name/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Profession/)
    expect(rendered).to match(/Birthplace/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Education/)
    expect(rendered).to match(/Marriage/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Work Experience/)
    expect(rendered).to match(/Form/)
    expect(rendered).to match(/Job/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/Salary/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Blog/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/6/)
  end
end
