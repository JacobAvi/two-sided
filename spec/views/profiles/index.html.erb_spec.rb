require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :contact_no => "Contact No",
        :image_data => "MyText",
        :car_type => "Car Type",
        :user => nil
      ),
      Profile.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :contact_no => "Contact No",
        :image_data => "MyText",
        :car_type => "Car Type",
        :user => nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact No".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Car Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
