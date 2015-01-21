require 'rails_helper'

RSpec.describe "downloads/new", :type => :view do
  before(:each) do
    assign(:download, Download.new(
      :title => "MyString",
      :upload => ""
    ))
  end

  it "renders new download form" do
    render

    assert_select "form[action=?][method=?]", downloads_path, "post" do

      assert_select "input#download_title[name=?]", "download[title]"

      assert_select "input#download_upload[name=?]", "download[upload]"
    end
  end
end
