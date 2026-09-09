# Authorization Review

For every protected operation answer:
1. Who is the authenticated actor?
2. What resource/action are they requesting?
3. What permission is required?
4. Where is permission enforced?
5. Can the client change an ID to access another resource?
6. Can a lower-privilege user call an admin endpoint directly?
7. Are tenant/organization/municipality boundaries enforced in every query?
8. Are bulk endpoints protected consistently?
9. Are background jobs/webhooks operating with excessive privilege?
10. Are stale memberships/roles revoked promptly?
