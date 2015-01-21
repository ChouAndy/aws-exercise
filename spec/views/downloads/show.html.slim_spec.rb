require 'rails_helper'

RSpec.describe "downloads/show", :type => :view do
  before(:each) do
    @download = assign(:download, Download.create!(
      :title => "Title",
      :upload => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
