desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."
  if Event.all.maximum('created_at') < Date.today

    cutoff = DateTime.today.-3.days


    Field.all.each do |field|
      field.location.open.upto(field.location.close).each do |time|
        0.upto(7).each do |day|
          Event.create(
            datetime: DateTime.new(2019, Date.today.strftime("%m").to_i, ((Date.today+day).strftime("%d").to_i), time, 0, 0),
            price: field.location.price,
            field: field
          )
        end
      end
    end

    1000.times do |n|
      e = Event.event_open.sample.id
      u = User.count
      Reservation.create(
        event_id: e,
        user_id:  rand(1..u).to_i,
      )
    end
  end

  puts "Locations: #{Location.count}"
  puts "Fields: #{Field.count}"
  puts "Events: #{Event.count}"
  puts "#{User.count} users in the system..."
  puts "#{Reservation.count} reservations..."

  puts "done."
end