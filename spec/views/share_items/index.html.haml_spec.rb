require 'spec_helper'

describe "share_items/index" do
  before(:each) do
    assign(:share_items, [
      stub_model(ShareItem,
        :extract_code => "9.99"
      ),
      stub_model(ShareItem,
        :extract_code => "9.99"
      )
    ])
  end

  it "renders a list of share_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
