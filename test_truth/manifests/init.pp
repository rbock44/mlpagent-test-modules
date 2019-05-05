# define hiera server_role to be mapped to manifests
class test_truth {
  if has_role('testclient') {
    include testclient
  }
}
