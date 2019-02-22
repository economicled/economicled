# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "lightintheled.fr"
set :repo_url, "git@github.com:economicled/economicled.git"

set :linked_files, [
  'app/etc/env.php',
  'app/etc/config.local.php',
  'var/.setup_cronjob_status',
  'var/.update_cronjob_status',
  'auth.json'
]

set :linked_dirs, [
  'pub/media',
  'pub/sitemaps',
  'var/backups',
  'var/composer_home',
  'var/log',
  'var/session',
  'var/report',
  'var/tmp'
]

set :magento_deploy_languages, ["fr_FR"]
set :magento_deploy_themes, ["Codazon/fastest_hightech", "Magento/backend"]
set :magento_deploy_production, true
set :magento_deploy_chmod_d, "2775"
set :magento_deploy_chmod_f, "0755"

# Default value for keep_releases is 5
set :keep_releases, 3

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
set :ssh_options, { forward_agent: true }

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
