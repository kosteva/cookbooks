require 'net/http'
include_recipe 'route53'

route53_record "create a record" do
  name  node[:opsworks][:stack][:name] + '-' + node[:opsworks][:instance][:hostname] + '.' + node[:opsworks][:instance][:region] + '.shjt.org'
  value Net::HTTP.get(URI.parse('http://169.254.169.254/latest/meta-data/public-ipv4'))
  type  "A"
  ttl   60
  zone_id               node[:dns_zone_id]
  aws_access_key_id     node[:custom_access_key]
  aws_secret_access_key node[:custom_secret_key]
  overwrite true
  action :create
end
