# Findings: Gitea

## Tool Used
- VoAPI2

---

## Confirmed Vulnerabilities

### 1. Unrestricted File Upload
- **Endpoint**: /repos/{owner}/{repo}/contents/{filepath}
- **Description**: VoAPI2 was able to upload content without validating file type or access control.
- **Evidence file**: contentsVoAPIname

### 2. SSRF (Server-Side Request Forgery)
- **Endpoint**: /repos/{owner}/{repo}/hooks
- **Description**: VoAPI2 discovered an SSRF vulnerability via the webhook URL parameter.
- **Evidence file**: hooksVoAPIname
