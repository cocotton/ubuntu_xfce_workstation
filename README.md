# ubuntu_i3-gaps_workstation

A Chef cookbook to provision a Ubuntu with i3-gaps workstations.

## Requirements

1. ChefDK
    * Download the latest version: https://downloads.chef.io/chefdk
    * Install with `sudo dpkg -i chefdk_VERSION_amd64.deb`

## Usage

1. Clone this repository
2. Update the `solo.rb` and make it point to the directory containing this repository
3. Update the `default['ubuntu_i3-gaps_workstation']['user']` to match your own user
4. Check out [`attributes/default.rb`](attributes/default.rb) for what can be configured.
5. Run it `sudo chef-solo -c solo.rb -o 'recipe[ubuntu_i3-gaps_workstation]'`

## Notes
- If `i3-gaps` is already installed and you don't want to reinstall it, simply set the `node['ubuntu_i3-gaps_workstation']['i3-gaps']['install']` attribute to `false`
- If `light` is already installed and you don't want to reinstall it, simply set the `node['ubuntu_i3-gaps_workstation']['light']['install']` attribute to `false`
- If `termite` is already installed and you don't want to reinstall it, simply set the `node['ubuntu_i3-gaps_workstation']['termite']['install']` attribute to `false`
- If `polybar` is already installed and you don't want to reinstall it, simply set the `node['ubuntu_i3-gaps_workstation']['polybar']['install']` attribute to `false`

## Contributing

1. Fork it
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :)

