# Access Control By ClientIP Policy
            
The Access Control By ClientIP policy can be used in IBM Connect to filter 
API requests based upon the client's IP address.  The policy properties
have an array of "allow" or "deny" IP addresses.  The IP addresses may be
a single IP address or my use CIDR notation to specify a range of addresses.

## Prequisites

    - IBM API Connect 5.0.0
    - IBM Datapower 7.6.0 or later

```
