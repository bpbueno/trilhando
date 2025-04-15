require 'rails_helper'

RSpec.describe "trails/new", type: :view do
  before(:each) do
    assign(:trail, Trail.new(
      name: "MyString",
      extension_in_meters: 1,
      elevation_gain_in_meters: 1,
      city: "MyString"
    ))
  end

  it "renders new trail form" do
    render

    assert_select "form[action=?][method=?]", trails_path, "post" do

      assert_select "input[name=?]", "trail[name]"

      assert_select "input[name=?]", "trail[extension_in_meters]"

      assert_select "input[name=?]", "trail[elevation_gain_in_meters]"

      assert_select "input[name=?]", "trail[city]"
    end
  end
end
