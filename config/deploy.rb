# config valid only for current version of Capistrano
lock '3.4.0'


set :application, 'octave_journal'
set :repo_url, 'https://github.com/timsvoice/octavejournal'
set :ssh_options, { :forward_agent => true }
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
# Allow for password requests to surface in local terminal

# Credentials
set :user, "root  "

set :deploy_to, "/home/rails/octavejournal"
set :use_sudo, false
set :stage, :production

# Deployment method
set :deploy_via, :copy

# Versions to keep on server
set :keep_releases, 5


# Default value for :scm is :git
set :scm, :git
set :branch, "master"

# Default value for :format is :pretty
set :format, :pretty

# Default value for :pty is false
set :pty, true

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
