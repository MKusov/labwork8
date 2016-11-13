class MyMathController < ApplicationController
  include MyMathHelper
  def index
  end

  def view
  n=params[:n].to_i
  @arr=[]
  (1..n).each { |x| @arr << x if mersen(x) }
  end

end
