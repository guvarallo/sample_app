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

	it "should have a signup page at '/signup'" do
		get '/signup'
		response.body.should include 'Sign up</h1>'
	end

		it "should have a signup page at '/signin'" do
		get '/signin'
		response.body.should include 'Sign in</h1>'
	end

	it "should have the right links on the layout" do
		visit root_path
    click_link "About"
    expect(page).to have_content('About')
    click_link "Help"
    expect(page).to have_content('Help')
    click_link "Contact"
    expect(page).to have_content('Contact')
    click_link "Home"
    expect(page).to have_content('Sample App')
    click_link "Sign up now!"
    expect(page).to have_content('Sign up')
	end
end
