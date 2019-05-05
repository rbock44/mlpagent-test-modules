# define hiera server_role to be mapped to manifests
class my_truth {
  if has_role('mlpagent') {
    include mlpagent::chocolatey
    include mlpagent::nssm
    include mlpagent::install
  }
  if has_role('monitoring_server') {
    require monitoring::common
    include monitoring::elasticsearch
    include monitoring::kibana
    include monitoring::grafana
  }
  if has_role('monitoring_client') {
    include monitoring::mlpagent
    require monitoring::common
    include monitoring::filebeat
    include monitoring::winlogbeat
  }
}
