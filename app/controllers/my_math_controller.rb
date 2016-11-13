class MyMathController < ApplicationController
  include MyMathHelper
  def index
  end

  def view
  n=params[:n].to_i
    @arr=(1..1.0/0.0).lazy
           .map{|x| 2**x - 1}
           .take_while{|x| x < n}
           .select{|x| Prime.prime?(x)}.to_a
  end

end
