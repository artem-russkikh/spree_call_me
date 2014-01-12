require 'spec_helper'

describe "spree/admins/new" do
  before(:each) do
    assign(:spree_admin, stub_model(Spree::CallBack,
      :Spree => ""
    ).as_new_record)
  end

  it "renders new spree_admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spree_admin_callbacks_path, "post" do
      assert_select "input#spree_admin_Spree[name=?]", "spree_admin[Spree]"
    end
  end
end
