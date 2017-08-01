class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(name: params[:user][:name], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
    if @user.password == @user.password_confirmation && !@user.password.empty? && !@user.password.nil?
       @user.save
       session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
