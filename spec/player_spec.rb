require 'player'

describe Player do
  it 'returns player name' do
    player = Player.new("Sara")
    expect(player.name).to eq "Sara"
  end
end
