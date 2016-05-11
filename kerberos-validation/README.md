# Kerberos Validation Policy
            
The Kerberos Validation policy can be used in IBM API Connect to authenticate a SOAP request that contains a Kerberos Token in the BinarySecurityToken header element.

## Prerequisites

    - IBM API Connect 5.0.0.0 
    - IBM Datapower 7.2.0.5
    - The server keytab file that is needed for verifying and authenticating the kerberos token must be manually uploaded to the DataPower appliance to either the API Connect domain's cert directory or the default domain's sharedcert directory.
    - The keytab file(s) must be referenced by an associated DataPower Kerberos Keytab object in the API Connect domain whose name will be used as input to the policy.

```
