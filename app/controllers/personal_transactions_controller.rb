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
    
  end

end
