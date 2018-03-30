# encoding: UTF-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  #
  # current系列方法是读取存放在Session或Cookie中的与当前用户相关状态或变量
  #

  def current_user_id
    if session[:user_id] != ''
      @current_user_id ||= User.where(id: session[:user_id]).pluck(:id)
    end
  end
  helper_method :current_user_id

end
