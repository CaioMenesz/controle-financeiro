# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  PersonalTransaction.create(
    title: "Café", 
    description: "Café forte da marca XYZ", 
    amount: 14.99, 
    transaction_type: "Saída", 
    transaction_date: "2023-02-01"
  )

  PersonalTransaction.create(
    title: "Leite", 
    description: "Da marca YZO", 
    amount: 8.99, 
    transaction_type: "Saída", 
    transaction_date: "2023-02-02"
  )

  PersonalTransaction.create(
     title: "Salário",
     description: "Salário do mês de fevereiro", 
     amount: 2000.00,
     transaction_type: "Entrada", 
     transaction_date: "2023-02-10"
    )

