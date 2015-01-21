require 'rails_helper'

RSpec.describe "downloads/index", :type => :view do
  before(:each) do
    assign(:downloads, [
      Download.create!(
        :title => "Title",
        :upload => ""
      ),
      Download.create!(
        :title => "Title",
        :upload => ""
      )
    ])
  end

  it "renders a list of downloads" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
