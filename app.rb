require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @final_num = (params[:number].to_i**2)
    "#{@final_num}"
  end

  get '/say/:number/:phrase' do
    phrases = ''
    (params[:number].to_i).times do
        phrases += "#{params[:phrase]}"
    end
    phrases

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]}" += "#{params[:word2]}" += "#{params[:word3]}" += "#{params[:word4]}" += "#{params[:word5]}"
  end

  get '/:operation/:number1/:number2' do
    empty_phrase = ''
    total.to_s = params[:number1].to_i += params[:operation] += params[:number2].to_i
      empty_phrase += "#{total}"
  end
end
