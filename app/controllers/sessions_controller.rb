# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    if params[:name].nil? || params[:name].blank?
      redirect_to "/sessions/new"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    if !session[:name]
      session[:name] = nil
    else
      session.delete :name
    end
    redirect_to "/sessions/new"
  end
end
