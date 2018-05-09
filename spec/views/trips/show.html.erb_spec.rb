require 'rails_helper'

RSpec.describe "trips/show", type: :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Start Address/)
    expect(rendered).to match(/Finish Address/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
