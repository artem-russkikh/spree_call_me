require 'spec_helper'

describe "spree/admins/index" do
  before(:each) do
    assign(:spree_admin_callbacks, [
      stub_model(Spree::CallBack,
        :Spree => ""
      ),
      stub_model(Spree::CallBack,
        :Spree => ""
      )
    ])
  end

  it "renders a list of spree/admins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
