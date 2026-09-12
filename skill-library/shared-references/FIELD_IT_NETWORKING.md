# IT Operations, Networking, DNS/TLS, and Systems Administration — Professional Field Guide

## Core mental models
- layered diagnosis from physical/process to application
- known-good baseline and change history
- name resolution, addressing, routing, policy and transport as distinct layers
- least privilege and configuration provenance
- logs/metrics/packet evidence before resets
- safe reversible changes and recovery access

## Questions experienced practitioners ask
- What changed and what still works?
- Is the failure local, link, IP, route, DNS, transport, TLS, proxy, auth, or application?
- What do logs/status/packet flow prove?
- Could NAT/firewall/VPN/asymmetric routing explain the symptom?
- Will this change cut off remote access?
- How do we restore the previous configuration?

## Diagnostic / implementation tools
- ping/traceroute/pathping where appropriate
- ipconfig/ip/route/ss/netstat/nslookup/dig
- curl/openssl and certificate inspection
- event logs/journalctl/service managers
- packet capture when justified
- vendor/controller/cloud network diagnostics

## Common professional failure modes
- random restarts as diagnosis
- changing DNS/firewall/routes simultaneously
- assuming ping proves application health
- remote firewall changes without recovery path
- ignoring MTU/NAT/VPN/asymmetric routes
- copying vendor commands for the wrong OS/version

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
