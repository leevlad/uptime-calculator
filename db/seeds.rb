# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

services = [
  "Admin1",
  "Adobe API",
  "Apple iCloud",
  "AWS NATs",
  "AWS us-east",
  "BMO",
  "CDS API",
  "CDS DB (RDS)",
  "CDS Sidekiq",
  "Converter Service",
  "Didit",
  "DNS Made Easy",
  "DynamoDB",
  "Elastic Map-Reduce (EMR)",
  "Elasticsearch",
  "ETL Processors",
  "Facebook API",
  "Fastly",
  "gems.500px.net",
  "GitHub",
  "Google Auth",
  "Kinesis",
  "Mandrill",
  "Media Service",
  "Mobile BFF",
  "Mobile BFF memcached",
  "Mobile BFF Redis",
  "Monolith API",
  "Monolith App",
  "Monolith cron",
  "Monolith memcached",
  "Monolith MongoDB",
  "Monolith MySQL Master",
  "Monolith MySQL Slave",
  "Monolith Redis",
  "Monolith Sidekiq",
  "Newsletter Sender",
  "Notifications DB (RDS)",
  "Notifications Indexer",
  "Notifications Query Service",
  "Optimizely",
  "OVH-AWS Link",
  "OVH-BHS",
  "PackageCloud",
  "Parse",
  "PayPal",
  "Portfolios App",
  "Portfolios MongoDB",
  "Portfolios Redis",
  "Portfolios Sidekiq",
  "Prime App",
  "Prime Crons",
  "Prime memcached",
  "Prime Redis",
  "Prime Sidekiq",
  "Redshift",
  "Resize Service",
  "Roshi",
  "S3",
  "Salesforce",
  "Search Indexer",
  "Search Service",
  "Stripe",
  "Taplytics",
  "Timelines Indexer",
  "Timelines Query Service",
  "TravisCI",
  "Twitter API",
  "Unbounce",
  "VCG Forwarder",
  "VCG MongoDB Tailer",
  "VCG MySQL Tailer",
  "vcg.me",
  "Vision Classifier",
  "Vision DB (RDS)",
  "Vision Indexer",
  "Vision Query Service",
  "Votes MySQL Master",
  "Votes MySQL Slave",
  "Web BFF",
  "Web BFF memcached",
  "Web BFF Redis",
  "wp-engine"
]

features = [
  "Community e-mail notifications",
  "Lightroom - Publish",
  "Lightroom - Sync photos",
  "Mobile - 500px.me redirect banner",
  "Mobile - A/B Testing",
  "Mobile - Create photo comment",
  "Mobile - Discovery",
  "Mobile - Gallery deep links",
  "Mobile - Home feed",
  "Mobile - Like photo",
  "Mobile - Follow user",
  "Mobile - Login and Registration",
  "Mobile - Photo Upload"
]

services.each do |service_name|
  Service.create(name: service_name)
end

features.each do |feature_name|
  Feature.create(name: feature_name)
end
