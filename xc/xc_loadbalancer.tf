resource "volterra_service_policy" "allow_all" {
    name        = "allow-all-test-ideathon"
    namespace   = "kvm-on-prem"
    algo        = "FIRST_MATCH"
    any_server  = true

    simple_rules {
        action = "ALLOW"
        waf_action {
            none = true
            waf_in_monitoring_mode = false
            waf_skip_processing    = false
        }
    }

    allow_all_requests = true
    deny_all_requests  = false
}

resource "volterra_active_service_policies" "active_staging" {
    depends_on = [volterra_service_policy.allow_all]
    namespace = volterra_namespace.system.name
    policies {
        name = "allow-all-test"
        namespace = "kvm-on-prem"
        tenant = treino
    }
}