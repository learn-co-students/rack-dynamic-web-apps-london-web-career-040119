class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20) #generate three numbers between 1 and 20
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"  #\ns are just a special character which gets rendered by the browser as a new line.
    resp.write "#{num_2}\n"  #{ changed the puts statements into resp.write}
    resp.write "#{num_3}\n"  # The #write method can be called many times to build up the full response.

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish #The response isn't sent back to the user until #finish is called.
  end

end
