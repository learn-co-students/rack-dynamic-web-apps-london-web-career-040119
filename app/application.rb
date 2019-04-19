class Application

  def call(env)
    resp = Rack::Response.new

    arr = []
    3.times do
      num = Kernel.rand(1..20)
      arr << num
      resp.write "#{num}\n"
    end

    if arr.uniq.length == 1
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
