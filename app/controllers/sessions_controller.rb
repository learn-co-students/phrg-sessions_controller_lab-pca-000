# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    if params[:name].blank? || params[:name] == ""
      redirect_to sessions_new_path
    else
      (session[:name] = params[:name])
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end
end
