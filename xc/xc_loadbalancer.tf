resource "volterra_service_policy" "allow_all" {
    name        = "allow-all-test-ideathon"
    namespace   = "kvm-on-prem"
    algo        = "FIRST_MATCH"
    any_server  = true


    rule_list {
    rules {
      metadata {
        name = "demo-rule"
      }
      spec {
        action     = "ALLOW"
        any_client = true
        waf_action {
          none = true
        }
        ip_prefix_list {
        ip_prefixes = ["192.168.20.0/24"]
      }
      }
      
    }
    rules {
      metadata {
        name = "demo-rule-2"
      }
      spec {
        action     = "ALLOW"
        any_client = true
        waf_action {
          none = true
        }
      }
    }
  }

}