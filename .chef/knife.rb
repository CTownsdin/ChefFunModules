# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ctownsdin"
client_key               "#{current_dir}/ctownsdin.pem"
validation_client_name   "ctown_org-validator"
validation_key           "#{current_dir}/ctown_org-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/ctown_org"
cookbook_path            ["#{current_dir}/../cookbooks"]
