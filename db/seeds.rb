# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing records to avoid duplicates
User.destroy_all
Trail.destroy_all

# User seeds
users = [
  { name: 'João Silva', gender: 'Male' },
  { name: 'Maria Santos', gender: 'Female' },
  { name: 'Pedro Oliveira', gender: 'Male' },
  { name: 'Ana Souza', gender: 'Female' },
  { name: 'Lucas Ferreira', gender: 'Male' },
  { name: 'Beatriz Costa', gender: 'Female' },
  { name: 'Gabriel Rodrigues', gender: 'Male' },
  { name: 'Carolina Almeida', gender: 'Female' },
  { name: 'Thiago Pereira', gender: 'Male' },
  { name: 'Mariana Lima', gender: 'Female' }
]

users.each do |user|
  User.create!(user)
end

# Trail seeds (real Brazilian trails)
trails = [
  {
    name: 'Trilha do Pico do Jaraguá',
    extension_in_meters: 1200,
    elevation_gain_in_meters: 345,
    city: 'São Paulo'
  },
  {
    name: 'Trilha da Pedra do Baú',
    extension_in_meters: 2800,
    elevation_gain_in_meters: 430,
    city: 'São Bento do Sapucaí'
  },
  {
    name: 'Trilha da Pedra da Gávea',
    extension_in_meters: 3200,
    elevation_gain_in_meters: 842,
    city: 'Rio de Janeiro'
  },
  {
    name: 'Trilha do Morro do Canal',
    extension_in_meters: 4500,
    elevation_gain_in_meters: 650,
    city: 'Piraquara'
  },
  {
    name: 'Trilha do Pico do Paraná',
    extension_in_meters: 9000,
    elevation_gain_in_meters: 1150,
    city: 'Antonina'
  },
  {
    name: 'Trilha do Pico dos Marins',
    extension_in_meters: 5400,
    elevation_gain_in_meters: 950,
    city: 'Piquete'
  },
  {
    name: 'Trilha da Pedra do Sino',
    extension_in_meters: 11000,
    elevation_gain_in_meters: 1200,
    city: 'Teresópolis'
  },
  {
    name: 'Trilha do Monte Verde',
    extension_in_meters: 3500,
    elevation_gain_in_meters: 400,
    city: 'Monte Verde'
  },
  {
    name: 'Trilha da Pedra Grande',
    extension_in_meters: 4200,
    elevation_gain_in_meters: 380,
    city: 'Atibaia'
  },
  {
    name: 'Trilha do Pico das Agulhas Negras',
    extension_in_meters: 7200,
    elevation_gain_in_meters: 600,
    city: 'Itatiaia'
  },
  {
    name: 'Trilha do Morro do Anhangava',
    extension_in_meters: 2800,
    elevation_gain_in_meters: 350,
    city: 'Quatro Barras'
  },
  {
    name: 'Trilha da Serra da Mantiqueira',
    extension_in_meters: 15000,
    elevation_gain_in_meters: 1500,
    city: 'Campos do Jordão'
  },
  {
    name: 'Trilha do Pico do Itacolomi',
    extension_in_meters: 6400,
    elevation_gain_in_meters: 750,
    city: 'Ouro Preto'
  },
  {
    name: 'Trilha do Morro do Couto',
    extension_in_meters: 4800,
    elevation_gain_in_meters: 520,
    city: 'Itatiaia'
  },
  {
    name: 'Trilha da Pedra do Urubu',
    extension_in_meters: 3100,
    elevation_gain_in_meters: 420,
    city: 'Mairiporã'
  },
  {
    name: 'Trilha do Pico do Corcovado',
    extension_in_meters: 8200,
    elevation_gain_in_meters: 980,
    city: 'Ubatuba'
  },
  {
    name: 'Trilha da Pedra do Camelo',
    extension_in_meters: 2500,
    elevation_gain_in_meters: 310,
    city: 'Serra do Cipó'
  },
  {
    name: 'Trilha do Morro do Chapéu',
    extension_in_meters: 5600,
    elevation_gain_in_meters: 680,
    city: 'Chapada Diamantina'
  },
  {
    name: 'Trilha da Pedra Redonda',
    extension_in_meters: 3800,
    elevation_gain_in_meters: 440,
    city: 'Nova Friburgo'
  },
  {
    name: 'Trilha do Vale do Pati',
    extension_in_meters: 18000,
    elevation_gain_in_meters: 1600,
    city: 'Chapada Diamantina'
  }
]

trails.each do |trail|
  Trail.create!(trail)
end

puts "Created #{User.count} users"
puts "Created #{Trail.count} trails"
