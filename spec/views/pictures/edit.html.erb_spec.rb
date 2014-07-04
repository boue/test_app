require 'rails_helper'

RSpec.describe "pictures/edit", :type => :view do
  before(:each) do
    @picture = assign(:picture, Picture.create!(
      :title => "MyText",
      :user => nil
    ))
  end

  it "renders the edit picture form" do
    render

    assert_select "form[action=?][method=?]", picture_path(@picture), "post" do

      assert_select "textarea#picture_title[name=?]", "picture[title]"

      assert_select "input#picture_user_id[name=?]", "picture[user_id]"
    end
  end
end
