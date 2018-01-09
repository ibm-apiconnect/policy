# Circuit Breaker SLM with Peering/Clustered

The Circuit Breaker SLM policy can be used in IBM API Connect to reject new connections when the total request concurrency exceeds a configurable threshold. Supports count partitioning using a unique string identifier (key). This policy is also clustered or peered using SLM Peering allowing the count to be distributed across a cluster of API Gateways.

## Prerequisites

    IBM API Connect 5.x
    IBM DataPower 7.2.x

## Sample Configuration

```
x-ibm-configuration:
  testable: true
  enforced: true
  cors:
    enabled: true
  assembly:
    execute:
      - circuit-breaker-slm-clustered:
          key: default
          concurrency: 1
      - invoke:
          target-url: 'https://tonyf-delay.mybluemix.net/delay/20'
          verb: GET
    catch:
      - errors:
          - CircuitBreakerSLM
        execute:
          - set-variable:
              title: Set custom response for the circuit break
              actions:
                - set: message.body
                  value: "{\"message\":\"I'm sorry Dave, I'm afraid I can't let you do that\"}"
                - set: message.status.code
                  value: '429'
                - set: message.headers.content-type
                  value: application/json
```
