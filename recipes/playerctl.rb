user = node['ubuntu_i3-gaps_workstation']['user']
playerctl_deb_path = "#{node['ubuntu_i3-gaps_workstation']['tmp_dir']}/playerctl.deb"
version = node['ubuntu_i3-gaps_workstation']['playerctl']['version']

# Download playerctl deb package
remote_file playerctl_deb_path do
  source "https://github.com/acrisci/playerctl/releases/download/v#{version}/playerctl-#{version}_amd64.deb"
  owner user
  group user
  notifies :install, 'dpkg_package[install_playerctl]', :immediate
  not_if 'dpkg -l | grep playerctl'
end

# Install playerctl
dpkg_package 'install_playerctl' do
  source playerctl_deb_path
  action :nothing
end

# Cleanup playerctl deb package
file playerctl_deb_path do
  action :delete
end
