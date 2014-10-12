require 'spec_helper'

describe "LayoutLinks" do

	it "should have a Home page at '/'" do
		get '/'
		response.body.should include 'Sample App</h1>'
	end

	it "should have a Contact page at '/contact'" do
		get '/contact'
		response.body.should include 'Contact</h1>'
	end

	it "should have an About page at '/about'" do
		get '/about'
		response.body.should include 'About</h1>'
	end

	it "should have a Help page at '/help'" do
		get '/help'
		response.body.should include 'Help</h1>'
	end
end
