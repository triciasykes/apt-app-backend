user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")


apartments1 =const mockApartments = [
  {
    street: 'Hugo Ave',
    unit: '12',
    city: 'San Francisco',
    state: 'CA',
    square_footage: 600,
    price: '2000',
    bedrooms: 1,
    bathrooms: 1,
    pets: 'yes',
    image: "https://i.pinimg.com/564x/71/b5/18/71b518120e66d7ac09802138cf13f2d5.jpg",
    user_id: 1
  },
  {
    street: 'Mallorca Dr',
    unit: '32R',
    city: 'La Jolla',
    state: 'CA',
    square_footage: 900,
    price: '3500',
    bedrooms: 2.5,
    bathrooms: 2,
    pets: 'no',
    image: "https://images1.apartments.com/i2/Hv5KnVkv8qYhG0p8OaFqky8lP3XhputAz1s2LQoW5G0/117/la-jolla-palms-apartment-homes-san-diego-ca-building-photo.jpg",
  },
  {
    street: 'Cantebury Lane',
    unit: '43',
    city: 'Phoenix',
    state: 'AZ',
    square_footage: 1100,
    price: '1800',
    bedrooms: 2,
    bathrooms: 1,
    pets: 'yes',
    image: "https://res.cloudinary.com/apartmentlist/image/upload/c_fill,dpr_auto,f_auto,g_center,h_415,q_auto,w_640/bde2c53e7c09a13c09dd7e55dc52604d.jpg",
  }
]


apartments2 = [
  {
    street: '85 Humuhumunukunukuapua',
    unit: '5F',
    city: 'Maui',
    state: 'HI',
    square_footage: 1000,
    price: '1800',
    bedrooms: 2,
    bathrooms: 2,
    pets: 'yes!',
    image: 'https://images.unsplash.com/photo-1469022563428-aa04fef9f5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'
  }
]

apartments1.each do |apartment|
  user1.apartments.create(apartment)
  puts "creating: #{apartment}"
end

apartments2.each do |apartment|
  user2.apartments.create(apartment)
  puts "creating: #{apartment}"
end
