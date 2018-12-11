require ('sinatra')
require ('sinatra/contrib/all') if development?
require ('pry-byebug')
require_relative ('models/rps_model')
also_reload('./models/*')

# get '/' do
#   erb (:home)
# end

get '/:hand1/:hand2' do
  winner = RPSGame.check_win(params[:hand1], params[:hand2])
  @win = winner
  erb( :result )
end
