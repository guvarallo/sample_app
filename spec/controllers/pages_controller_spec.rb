require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the content 'Sample App'" do
      visit '/pages/home'
      expect(page).to have_content('Sample App')
    end
    
    it "should have a non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end  
  end
  
  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the content 'Contact'" do
      visit '/pages/contact'
      expect(page).to have_content('Contact')
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the content 'About'" do
      visit '/pages/about'
      expect(page).to have_content('About')
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    
    it "should have the content 'Help'" do
      visit '/pages/help'
      expect(page).to have_content('Help')
    end
  end
end
