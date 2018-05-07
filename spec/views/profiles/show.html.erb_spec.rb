require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :contact_no => "Contact No",
      :image_data => "MyText",
      :car_type => "Car Type",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Contact No/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Car Type/)
    expect(rendered).to match(//)
  end
end
