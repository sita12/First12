class AccountsController < ApplicationController
    def index
        @accounts = Account.all
        @total = Account.sum(:amount)
       @balance = Account.balance
       @debt = Account.debt
    end 

      def create    
      @account = Account.create(account_params)
      if @account.valid?
         flash[:success] = "Succesfully created!"

      else
         flash[:alert] = "Woops! Looks like there has been an error!"
      end
      redirect_to root_path
      end

	def edit 
		@account= Account.find(params[:id])
	end

  def update
    @account = Account.find(params[:id])
    if @account.update(account_params)
      flash[:success] = "Successfull updated!"
      redirect_to root_path
    else
      flash[:alert] = "Woops! Looks like there has been an error!"
      redirect_to edit_account_path(params[:id])
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    flash[:success] = "Successfully deleted!"
    redirect_to root_path
  end

	def account_params
		params.require(:account).permit(:title,:amount,:date)
    end  
    

end
