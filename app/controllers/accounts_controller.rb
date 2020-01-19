class AccountsController < ApplicationController
  def Index

  end

  def new
    @accounts = Account.new
  end
  
  def search
    @accounts = Account.where("name LIKE ?", "%#{new_params[:name]}%")
    sleep(2)
    respond_to do |format|
      format.js
    end
  end


  private

  def new_params
    params.require(:account).permit(:name)
  end

end
