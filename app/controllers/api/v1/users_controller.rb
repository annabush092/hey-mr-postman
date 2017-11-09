class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user, include: 'emails'
  end

  def create
    @user = User.new(name: params[:name], email_address: params[:email_address])
    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  def login
    byebug
    inputName = params[:name].split("+").join(" ")
    @user = User.find_by(name: inputName)
    render json: @user, include: 'emails'
  end

end
