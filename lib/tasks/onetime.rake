namespace :onetime do
  desc "copy detours to guidedtours"
  task :guidedtours => :environment do
    query1 = 'CREATE TABLE guidedtours LIKE detours'
    ActiveRecord::Base.connection.execute(query1)
    query2 = 'INSERT INTO guidedtours SELECT * FROM detours'
    ActiveRecord::Base.connection.execute(query2)
  end

  desc "copy tsrequests to guidedtours"
  task :seminars => :environment do
    query1 = 'CREATE TABLE seminars LIKE ts_requests'
    ActiveRecord::Base.connection.execute(query1)
    query2 = 'INSERT INTO seminars SELECT * FROM ts_requests'
    ActiveRecord::Base.connection.execute(query2)
  end
end
