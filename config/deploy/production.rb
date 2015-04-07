set :stage, :production

# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

server 'www.octavejournal.com', 
  user: 'deployer', 
  roles: %w{app web db},
  ssh_options: {
    keys: %w(/home/user_name/.ssh/id_rsa),
    forward_agent: true,
  }

