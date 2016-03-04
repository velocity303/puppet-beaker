#class to install beaker docker support
class beaker::docker (
  Array $jenkins_users = $::beaker::jenkins_users,
) {
  class { '::docker':
    dns          => '8.8.8.8',
    docker_users => $jenkins_users,
  }
}
