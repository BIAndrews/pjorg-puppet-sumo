# sumo::params
#
# Default values for parameters used in the module.
#
class sumo::params {

  case $::osfamily {
    'RedHat': {
      $sumo_package_name   = 'SumoCollector'
      $sumo_service_config  = '/etc/sumo.conf'
      $sumo_service_name  = 'collector'
      $syncsources    = '/etc/sumo.sources.d'
    }
    'Debian': {
      $sumo_package_name   = 'SumoCollector'
      $sumo_service_config  = '/etc/sumo.conf'
      $sumo_service_name  = 'collector'
      $syncsources    = '/etc/sumo.sources.d'
    }
    default: {
      fail("Module pjorg-sumo does not support osfamily: ${::osfamily}")
    }
  }

  $accessid = undef
  $accesskey = undef
  $clobber = undef
  $collectorname = undef
  $email = undef
  $ephemeral = undef
  $purge_sumo_sources_d = false
  $override = undef
  $password = undef
  $proxyhost = undef
  $proxyntlmdomain = undef
  $proxypassword = undef
  $proxyport = undef
  $proxyuser = undef
  $serviceconfig = undef
  $sources = undef
  $syncsourceswithsinglejson = undef
}
