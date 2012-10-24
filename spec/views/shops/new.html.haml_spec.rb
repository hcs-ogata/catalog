require 'spec_helper'

describe "shops/new" do
  before(:each) do
    assign(:shop, stub_model(Shop,
      :name => "MyString",
      :description => "MyText",
      :line_summary => "MyString"
    ).as_new_record)
  end

  it "renders new shop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shops_path, :method => "post" do
      assert_select "input#shop_name", :name => "shop[name]"
      assert_select "textarea#shop_description", :name => "shop[description]"
      assert_select "input#shop_line_summary", :name => "shop[line_summary]"
    end
  end
end
