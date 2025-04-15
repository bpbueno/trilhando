require 'rails_helper'

RSpec.describe "trails/show", type: :view do
  before(:each) do
    assign(:trail, Trail.create!(
      name: "Name",
      extension_in_meters: 2,
      elevation_gain_in_meters: 3,
      city: "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/City/)
  end
end
