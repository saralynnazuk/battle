feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :Player_1, with: 'Jack'
    fill_in :Player_2, with: 'Jill'
    click_button 'Submit'
    expect(page).to have_content 'Jill: 100HP'
  end
end
