resource "volterra_service_policy" "allow_all" {
    name        = "allow-all-test-ideathon"
    namespace   = "kvm-on-prem"
    algo        = "FIRST_MATCH"
    any_server  = true



    allow_all_requests = true
    deny_all_requests  = false
    rule_list {
      rules {
        metadata {
        name = "test"
        }
      spec {
        action = "ALLOW"
        any_client = true
      }
    }
    }
}


