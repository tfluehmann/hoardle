require 'spec_helper'

describe "links/new" do
  before(:each) do
    assign(:link, stub_model(Link,
      :link => "MyText",
      :category_id => 1
    ).as_new_record)
  end

  it "renders new link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", links_path, "post" do
      assert_select "textarea#link_link[name=?]", "link[link]"
      assert_select "input#link_category_id[name=?]", "link[category_id]"
    end
  end
end
