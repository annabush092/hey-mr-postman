class Api::V1::EmailsController < ApplicationController

  def index
    @emails = Email.all
    render json: @emails
  end

  def show
    @email = Email.find_by(id: params[:id])
    render json: @email
  end

  def create
    recipient = User.find_or_create_by(email_address: params[:recipient_email])
    @email = Email.new(user_id: params[:user_id], recipient_id: recipient.id, subject: params[:subject], content: params[:content], sent: params[:sent], read: params[:read])
    if @email.save
      render json: @email
    else
      render json: {errors: @email.errors.full_messages}, status: 422
    end
  end

  def update
    @email = Email.find_by(id: params[:id])
    if @email.update(user_id: params[:user_id],recipient_id: params[:recipient_id],subject: params[:subject],content: params[:content],sent: params[:sent], read: params[:read])
      render json: @email
    else
      render json: {errors: @email.errors.full_messages}, status: 422
    end
  end

  def destroy
    @email = Email.find_by(id: params[:id])
    if @email.destroy
      render json: {}, status: 200
    else
      render json: {errors: @email.errors.full_messages}, status: 422
    end
  end

end
