require 'rails_helper'

RSpec.describe "pictures/new", :type => :view do
  before(:each) do
    assign(:picture, Picture.new(
      :title => "MyText",
      :user => nil
    ))
  end

  it "renders new picture form" do
    render

    assert_select "form[action=?][method=?]", pictures_path, "post" do

      assert_select "textarea#picture_title[name=?]", "picture[title]"

      assert_select "input#picture_user_id[name=?]", "picture[user_id]"
    end
  end
end
