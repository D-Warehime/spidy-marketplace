JobContract.destroy_all
Job.destroy_all
User.destroy_all

15.times do
  character = Faker::RickAndMorty.character
  user = User.create(
    first_name: character.split[0],
    last_name: character.split[1],
    password: 'password',
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    location: Faker::Address.city,
    pay_per_hour: (0..100).to_a.sample
  )
  job = Job.new(
    skills: Faker::Job.key_skill,
    description: Faker::Lorem.sentence(15),
    title: Faker::Job.title,
    level: ['lead', 'beginner', 'high-school', 'phd', 'masters'].sample,
    industry: Faker::Job.field,
    location: Faker::Address.city,
    pay_min: (10..20).to_a.sample,
    pay_max: (20..30).to_a.sample,
    starting_date: DateTime.now - 1.weeks,
    ending_date: DateTime.now + 3.weeks
  )
  job.user = User.all[rand(User.all.length - 1)]
  job.save!

  job_contract = JobContract.new(
    status: [0, 1, 2].sample,
    price: (15..25).to_a.sample,
    payment_unit: ['contract', 'hr', 'day', 'week', 'month'].sample,
    freelancer_rating: (0..5).to_a.sample,
    negotiations: [true, false].sample,
  )
  job_contract.user = User.all[rand(User.all.length - 1)]
  job_contract.job = Job.all[rand(Job.all.length - 1)]
  job_contract.save!
end
