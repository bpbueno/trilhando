require 'rails_helper'

RSpec.describe "trails/edit", type: :view do
  let(:trail) {
    Trail.create!(
      name: "MyString",
      extension_in_meters: 1,
      elevation_gain_in_meters: 1,
      city: "MyString"
    )
  }

  before(:each) do
    assign(:trail, trail)
  end

  it "renders the edit trail form" do
    render

    assert_select "form[action=?][method=?]", trail_path(trail), "post" do

      assert_select "input[name=?]", "trail[name]"

      assert_select "input[name=?]", "trail[extension_in_meters]"

      assert_select "input[name=?]", "trail[elevation_gain_in_meters]"

      assert_select "input[name=?]", "trail[city]"
    end
  end
end
