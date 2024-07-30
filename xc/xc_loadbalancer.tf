resource "volterra_service_policy" "allow_all" {
    name        = "allow-all-test-ideathon"
    namespace   = "kvm-on-prem"
    algo        = "FIRST_MATCH"
    any_server  = true


    rule_list {
    rules  {
        metadata {
          name = "r1"
        }
        spec {
          action     = "ALLOW"
          any_client = true
        }
      }
    }
}



