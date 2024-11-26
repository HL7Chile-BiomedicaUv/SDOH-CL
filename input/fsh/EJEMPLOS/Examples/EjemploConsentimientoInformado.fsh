Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $consentpolicycodes = http://terminology.hl7.org/CodeSystem/consentpolicycodes

Instance: Ejemplo-ConsentimientoInformado
InstanceOf: SDOHCCConsentCL
Usage: #example
Title: "Ejemplo SDOHCC-Divulgación de información de consentimiento"
Description: "Ejemplo de un consentimiento para la divulgación de información relacionada con los SDOH. Se adjunta un archivo PDF a este consentimeinto."

* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* scope.text = "Consentimiento de privacidad"
* category[IDSCL] = $v3-ActCode#IDSCL "information disclosure"
* category[IDSCL].text = "Divulgación de información"
* patient = Reference(Ejemplo-Paciente) "María Díaz"
* dateTime = "2021-05-01"
* organization = Reference(Ejemplo-OrganizacionPagadora)
* sourceAttachment.contentType = #application/pdf
* sourceAttachment.language = #en
* sourceAttachment.data = "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gnGqlIHsniwksXv70qMZ5FAfpgR9ThZyq57g5yIJMhgNy1731rG0Vm/5k+pSS1qVqpn2N84iEefjJO9tKbFgyb0mPJxb3KnaqYaX1O/cqg2VDxczfP3fMy2TRCIdR+CzrVZOndSZ4RP1Cq+faTcN5Rbm4wTMlfxGM/jhle9fBV4QnVyT8O1d3cd73mECpgr/UblPlp3kCjJfZDGCWOTxkGtBG20IwSHqFSi0SmgKZW5kc3RyZWFtCmVuZG9iagoxIDAgb2JqCjw8L1R5cGUgL1BhZ2VzCi9LaWRzIFszIDAgUiA1IDAgUiBdCi9Db3VudCAyCi9NZWRpYUJveCBbMCAwIDU5NS4yOCA4NDEuODldCj4+CmVuZG9iago3IDAgb2JqCjw8L1R5cGUgL0ZvbnQKL0Jhc2VGb250IC9IZWx2ZXRpY2EtQm9sZAovU3VidHlwZSAvVHlwZTEKL0VuY29kaW5nIC9XaW5BbnNpRW5jb2RpbmcKPj4KZW5kb2JqCjggMCBvYmoKPDwvVHlwZSAvRm9udAovQmFzZUZvbnQgL0hlbHZldGljYQovU3VidHlwZSAvVHlwZTEKL0VuY29kaW5nIC9XaW5BbnNpRW5jb2RpbmcKPj4KZW5kb2JqCjkgMCBvYmoKPDwvVHlwZSAvRm9udAovQmFzZUZvbnQgL0hlbHZldGljYS1PYmxpcXVlCi9TdWJ0eXBlIC9UeXBlMQovRW5jb2RpbmcgL1dpbkFuc2lFbmNvZGluZwo+PgplbmRvYmoKMiAwIG9iago8PAovUHJvY1NldCBbL1BERiAvVGV4dCAvSW1hZ2VCIC9JbWFnZUMgL0ltYWdlSV0KL0ZvbnQgPDwKL0YxIDcgMCBSCi9GMiA4IDAgUgovRjMgOSAwIFIKPj4KL1hPYmplY3QgPDwKPj4KPj4KZW5kb2JqCjEwIDAgb2JqCjw8Ci9Qcm9kdWNlciAoUHlGUERGIDEuNy4yIGh0dHA6Ly9weWZwZGYuZ29vZ2xlY29kZS5jb20vKQovQ3JlYXRpb25EYXRlIChEOjIwMjQxMTI2MTUyMzA4KQo+PgplbmRvYmoKMTEgMCBvYmoKPDwKL1R5cGUgL0NhdGFsb2cKL1BhZ2VzIDEgMCBSCi9PcGVuQWN0aW9uIFszIDAgUiAvRml0SCBudWxsXQovUGFnZUxheW91dCAvT25lQ29sdW1uCj4+CmVuZG9iagp4cmVmCjAgMTIKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDAxOTkxIDAwMDAwIG4gCjAwMDAwMDIzODUgMDAwMDAgbiAKMDAwMDAwMDAwOSAwMDAwMCBuIAowMDAwMDAwMDg3IDAwMDAwIG4gCjAwMDAwMDEyOTggMDAwMDAgbiAKMDAwMDAwMTM3NiAwMDAwMCBuIAowMDAwMDAyMDg0IDAwMDAwIG4gCjAwMDAwMDIxODUgMDAwMDAgbiAKMDAwMDAwMjI4MSAwMDAwMCBuIAowMDAwMDAyNTA5IDAwMDAwIG4gCjAwMDAwMDI2MTkgMDAwMDAgbiAKdHJhaWxlcgo8PAovU2l6ZSAxMgovUm9vdCAxMSAwIFIKL0luZm8gMTAgMCBSCj4+CnN0YXJ0eHJlZgoyNzIzCiUlRU9GCg=="
* policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"
* policyRule.text = "Autorización Ley 19.628"
