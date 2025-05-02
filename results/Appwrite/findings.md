# Findings: Appwrite

## Tool Used
- VoAPI2

---

## Confirmed Vulnerabilities

### 1. SSRF
- **Endpoint**: /functions
- **Parameter**: url
- **Description**: VoAPI2 discovered the possibility to send external URLs when creating a function, which could lead to SSRF.
- **Evidence file**: functionsVoAPIname

### 2. Potential XSS / Injection
- **Endpoint**: /teams/{teamId}/members
- **Description**: Input reflection or lack of sanitization observed via VoAPI2 testing. May indicate XSS or injection weakness.
- **Evidence file**: teams!{teamId}!membersVoAPIname

### 3. Data exposure / misconfiguration
- **Endpoint**: /database/collections
- **Description**: VoAPI2 found accessible collection information without authentication or input validation.
- **Evidence file**: database!collectionsVoAPIname
