# Circuit Breaker SLM

The Circuit Breaker SLM policy can be used in IBM API Connect to reject new connections when the total request concurrency exceeds a configurable threshold. Supports count partitioning using a unique string identifier (key).

## Prequisites

    IBM API Connect 5.x
    IBM DataPower 7.2.x