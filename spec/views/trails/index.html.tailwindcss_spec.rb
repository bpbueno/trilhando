require 'rails_helper'

RSpec.describe "trails/index", type: :view do
  before(:each) do
    assign(:trails, [
      Trail.create!(
        name: "Name",
        extension_in_meters: 2,
        elevation_gain_in_meters: 3,
        city: "City"
      ),
      Trail.create!(
        name: "Name",
        extension_in_meters: 2,
        elevation_gain_in_meters: 3,
        city: "City"
      )
    ])
  end

  it "renders a list of trails" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("City".to_s), count: 2
  end
end
