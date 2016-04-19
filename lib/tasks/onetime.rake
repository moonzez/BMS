namespace :onetime do
  desc "copy detours to guidedtours"
  task :guidedtours => :environment do
    query1 = 'CREATE TABLE guidedtours LIKE detours'
    ActiveRecord::Base.connection.execute(query1)
    query2 = 'INSERT INTO guidedtours SELECT * FROM detours'
    ActiveRecord::Base.connection.execute(query2)
  end

  desc "copy tsrequests to seminars"
  task :seminars => :environment do
    query1 = 'CREATE TABLE seminars LIKE ts_requests'
    ActiveRecord::Base.connection.execute(query1)
    query2 = 'INSERT INTO seminars SELECT * FROM ts_requests'
    ActiveRecord::Base.connection.execute(query2)
  end

  desc "copy htseminars to hdseminars"
  task :hdseminars => :environment do
    query1 = 'CREATE TABLE hdseminars LIKE htseminars'
    ActiveRecord::Base.connection.execute(query1)
    query2 = 'INSERT INTO hdseminars SELECT * FROM htseminars'
    ActiveRecord::Base.connection.execute(query2)
  end
end
