require 'rails_helper'

RSpec.describe "trips/new", type: :view do
  before(:each) do
    assign(:trip, Trip.new(
      :distance_travelled => "9.99",
      :start_address => "MyString",
      :finish_address => "MyString",
      :start_lat => 1.5,
      :start_long => 1.5,
      :finish_lat => 1.5,
      :finish_long => 1.5,
      :fare => "9.99",
      :avail_seats => "",
      :user => nil
    ))
  end

  it "renders new trip form" do
    render

    assert_select "form[action=?][method=?]", trips_path, "post" do

      assert_select "input[name=?]", "trip[distance_travelled]"

      assert_select "input[name=?]", "trip[start_address]"

      assert_select "input[name=?]", "trip[finish_address]"

      assert_select "input[name=?]", "trip[start_lat]"

      assert_select "input[name=?]", "trip[start_long]"

      assert_select "input[name=?]", "trip[finish_lat]"

      assert_select "input[name=?]", "trip[finish_long]"

      assert_select "input[name=?]", "trip[fare]"

      assert_select "input[name=?]", "trip[avail_seats]"

      assert_select "input[name=?]", "trip[user_id]"
    end
  end
end
