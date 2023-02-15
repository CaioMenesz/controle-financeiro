class PersonalTransactionsController < ApplicationController

  def index
    @personal_transactions = PersonalTransaction.all
  end

  def sumSalary
    @sum = PersonalTransaction.contain(title == "Salário").sum(amount)
  end

end
