require 'rails_helper'

RSpec.describe "ratings/new", :type => :view do
  before(:each) do
    assign(:rating, Rating.new(
      :score => 1,
      :picture => nil
    ))
  end

  it "renders new rating form" do
    render

    assert_select "form[action=?][method=?]", ratings_path, "post" do

      assert_select "input#rating_score[name=?]", "rating[score]"

      assert_select "input#rating_picture_id[name=?]", "rating[picture_id]"
    end
  end
end
