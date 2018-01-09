# Circuit Breaker SLM with Peering/Clustered

The Circuit Breaker SLM policy can be used in IBM API Connect to reject new connections when the total request concurrency exceeds a configurable threshold. Supports count partitioning using a unique string identifier (key). This policy is also clustered or peered using SLM Peering allowing the count to be distributed across a cluster of API Gateways.

## Prerequisites

    IBM API Connect 5.x
    IBM DataPower 7.2.x