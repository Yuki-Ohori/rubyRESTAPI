10.times do 
    Movie.create({ 
        title: Faker::Movie.quote, 
        content: Faker::Lorem.sentence 
    }) 
end