require 'rails_helper'

RSpec.describe HomeController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET howWeWork" do
    it "returns http success" do
      get :howWeWork
      expect(response).to be_success
    end
  end

  describe "GET help" do
    it "returns http success" do
      get :help
      expect(response).to be_success
    end
  end

end
