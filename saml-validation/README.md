# SAML Validation Policy
            
The SAML Validation policy can be used in IBM API Management to authenticate a request that contains a digitally signed SAML assertion.

## Prerequisites

    - IBM API Management 4.0.2.1 
    - IBM Datapower 6.0.0.0
    - Trusted certificates files used to validate the digital signature must be manually uploaded to the DataPower appliance to either the API Management domain's cert directory or the default domain's sharedcert directory.
    - The certificate file(s) must be referenced by an associated DataPower Crypto Certificate object in the API Management domain.
    - The DataPower Crypto Certificate object(s) must be referenced by the validation credential in the API Management domain whose name begins with "saml-validation-policy-valcred"

```
