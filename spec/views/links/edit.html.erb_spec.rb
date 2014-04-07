require 'spec_helper'

describe "links/edit" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :link => "MyText",
      :category_id => 1
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", link_path(@link), "post" do
      assert_select "textarea#link_link[name=?]", "link[link]"
      assert_select "input#link_category_id[name=?]", "link[category_id]"
    end
  end
end
