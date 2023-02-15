class CreatePersonalTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_transactions do |t|
      t.timestamps
    end
  end
end

class CreatePersonalTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_transactions do |t|
      t.string :title
      t.string :description
      t.decimal :amount
      t.string :info_type
      t.string :transaction_type
      t.datetime :transaction_date
      t.timestamps
    end
  end
end
