namespace :onetime do
  desc "copy detaours to guidedtours"
  task :guidedtours => :environment do
    query1 = 'CREATE TABLE guidedtours LIKE detours'
    ActiveRecord::Base.connection.execute(query1)
    query2 = 'INSERT INTO guidedtours SELECT * FROM detours'
    ActiveRecord::Base.connection.execute(query2)
  end
end
