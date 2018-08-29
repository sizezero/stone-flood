 # coding: utf-8
require 'squib'
require 'game_icons'

data = Squib.csv file: 'action.csv'

# TODO: make colors less glaring
player2color = { 0=>'#000000', 1=>'#ffd700', 2=>'#ff0000', 3=>'#00ff00' , 4=>'#0000ff' }
player2color.default = '#ff0000'

action2gameIcon = { 'wizard'=>'wizard-face', 'prophet'=>'pope-crown', 'follower'=>'prayer', 'leader'=>'king', 'first'=>'play-button' }
player2color.default = 'lorc/meat'

# default size for Deck.new appears to be for portrait poker card
Squib::Deck.new(cards: data['action'].size, layout: 'layouts/layout.yml') do
  background color: 'white'

  player_colors = data['player'].map { |a| player2color[a] }
  rect fill_color: player_colors, layout: 'top'
  rect fill_color: player_colors, layout: 'bottom'

  rect layout: 'cut'
  rect layout: 'safe'

  text str: data['action'].map{ |a| a.capitalize }, layout: 'title'
  svg data: data['action'].map { |a| GameIcons.get(action2gameIcon[a]).string }, layout: 'picture'
  
  save_sheet prefix: 'action', columns: 4, dir: 'output'
  save_pdf trim: 37.5, dir: 'output'
end
