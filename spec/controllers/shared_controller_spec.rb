require 'rails_helper'

RSpec.describe SharedController, :type => :controller do

  describe "GET _header" do
    it "returns http success" do
      get :_header
      expect(response).to be_success
    end
  end

end
