
lock '3.12.1'


set :application, 'gamatch'


set :repo_url,  'git@github.com:makiron918/gamatch.git'


set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :rbenv_type, :user
set :rbenv_ruby, '2.5.1' 


set :ssh_options, auth_methods: ['publickey'],
                  keys: ['~/.ssh/GAMATCH.pem'] 


set :unicorn_pid, -> { "#{shared_path}/tmp/pids/unicorn.pid" }


set :unicorn_config_path, -> { "#{current_path}/config/unicorn.rb" }
set :keep_releases, 5

set :default_env, {
  rbenv_root: "/home/user/.rbenv",
  path: "/home/user/.rbenv/bin:$PATH",
  region: ENV["S3_REGION"],
  aws_access_key_id: ENV["S3_ACCESS_KEY"],
  aws_secret_access_key: ENV["S3_SECRET_KEY"]
}


after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end