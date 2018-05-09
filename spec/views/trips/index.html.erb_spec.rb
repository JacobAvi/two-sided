require 'rails_helper'

RSpec.describe "trips/index", type: :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        :distance_travelled => "9.99",
        :start_address => "Start Address",
        :finish_address => "Finish Address",
        :start_lat => 2.5,
        :start_long => 3.5,
        :finish_lat => 4.5,
        :finish_long => 5.5,
        :fare => "9.99",
        :avail_seats => "",
        :user => nil
      ),
      Trip.create!(
        :distance_travelled => "9.99",
        :start_address => "Start Address",
        :finish_address => "Finish Address",
        :start_lat => 2.5,
        :start_long => 3.5,
        :finish_lat => 4.5,
        :finish_long => 5.5,
        :fare => "9.99",
        :avail_seats => "",
        :user => nil
      )
    ])
  end

  it "renders a list of trips" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Start Address".to_s, :count => 2
    assert_select "tr>td", :text => "Finish Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
