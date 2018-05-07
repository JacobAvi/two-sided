require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :contact_no => "MyString",
      :image_data => "MyText",
      :car_type => "MyString",
      :user => nil
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[contact_no]"

      assert_select "textarea[name=?]", "profile[image_data]"

      assert_select "input[name=?]", "profile[car_type]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
