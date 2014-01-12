require 'spec_helper'

describe "spree/admins/edit" do
  before(:each) do
    @spree_admin = assign(:spree_admin, stub_model(Spree::CallBack,
      :Spree => ""
    ))
  end

  it "renders the edit spree_admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spree_admin_path(@spree_admin), "post" do
      assert_select "input#spree_admin_Spree[name=?]", "spree_admin[Spree]"
    end
  end
end
