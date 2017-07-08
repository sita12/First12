class AccountsController < ApplicationController
    def index
        @accounts = Account.all
    end 
    def create
       @account = Account.create(account_params)
       redirect_to root_path
    end

	def edit 
		@account = Account.find(params[:id])
	end

	def update
  		@account = Account.find(params[:id])
  		if @account.update(account_params)
    		redirect_to root_path
  		else
    		redirect_to edit_account_path(params[:id])
  		end
	end

	def destroy
  		@account = Account.find(params[:id])
  		@account.destroy
  		redirect_to root_path
end

    private

      def account_params
        params.require(:account).permit(:Title, :Amount, :Date)
    end
end    

end
