require 'rails_helper'

RSpec.describe "ratings/index", :type => :view do
  before(:each) do
    assign(:ratings, [
      Rating.create!(
        :score => 1,
        :picture => nil
      ),
      Rating.create!(
        :score => 1,
        :picture => nil
      )
    ])
  end

  it "renders a list of ratings" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
