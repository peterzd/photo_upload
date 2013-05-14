require 'spec_helper'

describe "share_items/new" do
  before(:each) do
    assign(:share_item, stub_model(ShareItem,
      :extract_code => "9.99"
    ).as_new_record)
  end

  it "renders new share_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", share_items_path, "post" do
      assert_select "input#share_item_extract_code[name=?]", "share_item[extract_code]"
    end
  end
end
