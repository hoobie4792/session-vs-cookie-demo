class StaticController < ApplicationController

  def home
    rand_string = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
    
    # Write session variable
    if !session[:value]
      session[:value] = rand_string
    else
      session[:value] += ',' + rand_string
    end
    @session_vals = session[:value].split(',')
    
    # Write cookies variable
    if !cookies[:value]
      cookies[:value] = rand_string
    else
      cookies[:value] += ',' + rand_string
    end
    @cookie_vals = cookies[:value].split(',')
  end

  def clear
    session.delete :value
    cookies.delete :value
    @session_vals = []
    @cookie_vals = ""
    redirect_to '/'
  end

end