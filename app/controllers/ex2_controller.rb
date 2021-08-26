class Ex2Controller < ApplicationController
  def loop
    a = params[:a]
    b = params[:b]
    @results = Array.new
    isAInt = false
    isBInt = false
    if Integer(a, exception: false)
      isAInt = true
    else
      @results.concat(['Invalid parameter for a'])
    end
    if Integer(b, exception: false)
      isBInt = true
    else
      @results.concat(['Invalid parameter for b'])
    end
    if isAInt && isBInt
      @results = (a..b).to_a
    end
  end
end
