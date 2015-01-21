require 'rails_helper'

RSpec.describe "Downloads", :type => :request do
  describe "GET /downloads" do
    it "works! (now write some real specs)" do
      get downloads_path
      expect(response.status).to be(200)
    end
  end
end
