require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:


   get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
   end

    get "/multiply/:num/:num2" do
    @num2 = params[:num2].to_i
    @num = params[:num].to_i


    "#{@num*@num2}"


    end

end
