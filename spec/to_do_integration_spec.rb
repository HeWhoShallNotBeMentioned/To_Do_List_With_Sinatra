require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('to_do item path', {:type => :feature}) do
  it('searches the result page for the most recent task') do
    visit('/')
    fill_in('To do description', :with => 'Give Christoph a bath')
    click_button('Show Me!')
    click_link('Back')
    expect(page).to have_content("Give Christoph a bath")
  end
end
