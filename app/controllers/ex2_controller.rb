class Ex2Controller < ApplicationController
  def loop
    a = params[:a]
    b = params[:b]
    if Integer(a, exception: false) && Integer(b, exception: false)
      puts a.class
      puts b.class
      @results = (a..b).to_a
    else
      puts a.class
      puts b.class
      @results = ['Invalid parameter a or b']
    end
  end
end
