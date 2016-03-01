#class to install beaker docker support
class beaker::docker (
  Array $jenkins_users = $::beaker::jenkins_users,
) {
  class { '::docker':
    docker_users => $jenkins_users,
  }
}
