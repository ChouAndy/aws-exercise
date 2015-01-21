require 'rails_helper'

RSpec.describe "downloads/edit", :type => :view do
  before(:each) do
    @download = assign(:download, Download.create!(
      :title => "MyString",
      :upload => ""
    ))
  end

  it "renders the edit download form" do
    render

    assert_select "form[action=?][method=?]", download_path(@download), "post" do

      assert_select "input#download_title[name=?]", "download[title]"

      assert_select "input#download_upload[name=?]", "download[upload]"
    end
  end
end
