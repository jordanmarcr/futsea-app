desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."
  if Event.all.maximum('datetime') < DateTime.now

    Event.all.where('datetime < ?', DateTime.now-3).destroy_all

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

    100.times do |n|
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