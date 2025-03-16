FROM test-image:latest

LABEL maintainer="Security Team <security@example.com>"

# This Dockerfile addresses the following vulnerabilities:
# - CVE-2025-0395: libc-bin (2.31-0ubuntu9.16 -> 2.31-0ubuntu9.17)
# - CVE-2025-0395: libc6 (2.31-0ubuntu9.16 -> 2.31-0ubuntu9.17)
# - CVE-2024-12243: libgnutls30 (3.6.13-2ubuntu1.11 -> 3.6.13-2ubuntu1.12)
# - CVE-2024-12133: libtasn1-6 (4.16.0-2 -> 4.16.0-2ubuntu0.1)

# Update packages to fix vulnerabilities
RUN apt-get update && \

    apt-get upgrade -y libc-bin libc6 libgnutls30 libtasn1-6 && \

    apt-get clean && \

    rm -rf /var/lib/apt/lists/*
