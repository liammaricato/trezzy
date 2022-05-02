# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Chapter.create([
  {
    id: 1,
    name: "São Vicente",
    number: 16,
    founded_at: "1983-11-19",
    city: "São Vicente"
  },
  {
    id: 2,
    name: "Guarujá",
    number: 751,
    founded_at: "2016-01-01",
    city: "Guarujá"
  },
])

Cashflow.create([
  {
    id: 3,
    chapter_id: 1,
    name: "Tronco",
    description: "O fluxo de tronco do Capítulo. A cada reunião pode ser reunido um valor a ser doado para o tronco, aqui são registradas essas entradas e possíveis despesas pagas com essas contribuições."
  }
])

User.create([
  {
    id: 1,
    chapter_id: 1,
    name: "Liam",
    password: "123",
    user_type: "admin"
  },
  {
    id: 2,
    chapter_id: 2,
    name: "Matheus Torres",
    password: "123",
    user_type: "treasurer"
  }
])

