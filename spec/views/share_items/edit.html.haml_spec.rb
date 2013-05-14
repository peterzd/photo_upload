require 'spec_helper'

describe "share_items/edit" do
  before(:each) do
    @share_item = assign(:share_item, stub_model(ShareItem,
      :extract_code => "9.99"
    ))
  end

  it "renders the edit share_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", share_item_path(@share_item), "post" do
      assert_select "input#share_item_extract_code[name=?]", "share_item[extract_code]"
    end
  end
end
