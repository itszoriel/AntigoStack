# Security review example

## Request

> Review this admin feature. The proposal stores `isAdmin` in browser storage and hides admin buttons for ordinary users. Challenge the design if authorization can be bypassed.

## Expected approach

- Identify protected assets, actors, and the client/server trust boundary.
- Explain that browser-controlled state can improve presentation but cannot enforce authorization.
- Require server-side authorization for every protected resource and action.
- Distinguish authentication (who the user is) from authorization (what the user may do).
- Test direct requests and object-level access, not only hidden UI controls.
- Report findings and residual risk without claiming a complete security guarantee.
