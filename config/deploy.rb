# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'octave_journal'
set :deploy_to, "/home/deployer/octave_journal"

set :scm, :git
set :repo_url, 'https://github.com/timsvoice/octavejournal'
set :branch, "rails-deploy"

set :use_sudo, false

# Deployment method
set :deploy_via, :remote_cache
set :pty, true

set :rbenv_ruby, '2.2.1'

# Don't delete all the upload files
set :linked_dirs, fetch(:linked_dirs) + %w{public/system public/uploads}

after "deploy", "deploy:cleanup"

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
