resource "volterra_service_policy" "allow_all" {
    name        = "allow-all-test-ideathon"
    namespace   = "kvm-on-prem"
    algo        = "FIRST_MATCH"
    any_server  = true



    allow_all_requests = true
    deny_all_requests  = false
}

resource "volterra_active_service_policies" "active_staging" {
    depends_on = [volterra_service_policy.allow_all]
    namespace = "kvm-on-prem"
    policies {
        name = "allow-all-test"
        namespace = "kvm-on-prem"
        tenant = treino
    }
}