class PersonalTransactionsController < ApplicationController

  def index
    @personal_transactions = PersonalTransaction.all
    @sum = PersonalTransaction.where(title: "Salário").sum(:amount)
    @sumDif = PersonalTransaction.where.not(title: "Salário").sum(:amount)
    @liquid = @sum - @sumDif
  end

  def new 
    @personal_transaction = PersonalTransaction.new
  end

  def create 
    @personal_transaction = PersonalTransaction.new(personal_transaction_params)
    if @personal_transaction.save
      redirect_to personal_transactions_path
    else
      render :new
    end
  end

  def personal_transaction_params
    params.require(:personal_transaction).permit(
      :title,
      :description,
      :amount,
      :transaction_type,
      :transaction_date
    )
  end

end
