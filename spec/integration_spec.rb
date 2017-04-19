require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('scrabble scores', {:type => :feature}) do
  it('processes the user entry and returns it scrabble scored') do
    visit('/')
    fill_in('scrabble', :with => 'defenestrate')
    click_button('Send')
    expect(page).to have_content('16')
  end
end
