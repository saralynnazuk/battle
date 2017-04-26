require 'spec_helper'
require './app'

feature 'Player names' do
  scenario 'expects players to fill in their names' do
    visit('/')
    fill_in('Player_1', with: 'Jack')
    fill_in('Player_2', with: 'Jill')
    click_button "Submit"
    expect(page).to have_content('Jack vs. Jill')
  end
end
