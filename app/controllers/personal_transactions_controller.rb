class PersonalTransactionsController < ApplicationController

  def index
    @personal_transactions = PersonalTransaction.all
    @sum = PersonalTransaction.where(title: "Salário").sum(:amount)
    @sumDif = PersonalTransaction.where.not(title: "Salário").sum(:amount)
  end

end
