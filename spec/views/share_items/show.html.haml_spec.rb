require 'spec_helper'

describe "share_items/show" do
  before(:each) do
    @share_item = assign(:share_item, stub_model(ShareItem,
      :extract_code => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
