# Swiggy MCP — Tool Surface & Capability Reference

Source: official `github.com/Swiggy/swiggy-mcp-server-manifest` (verified live July 2026).

## Endpoints
| Surface | URL | Auth |
|---|---|---|
| Food | `https://mcp.swiggy.com/food` | OAuth (Swiggy consumer login) |
| Instamart | `https://mcp.swiggy.com/im` | OAuth |
| Dineout | `https://mcp.swiggy.com/dineout` | OAuth |

Transport: remote `http` MCP. Register each as a separate server.

## Capabilities
### Food
- Restaurant Search (cuisine / name / dish, location-aware)
- Menu Browsing (prices, item details)
- Cart Management (add, customize, bill breakdown)
- Ordering → place order (**COD only**), order tracking

### Instamart
- Product Search (name / category / brand, at delivery location)
- Cart Management (view, pricing, bill breakdown)
- Order Placement → checkout (**COD only**), instant confirmation

### Dineout
- Restaurant Discovery (nearby, preferences)
- Restaurant Details (menus, ratings, offers)
- Slot Availability (date/time)
- Table Booking → **free bookings only**

## Whitelisted OAuth redirect URIs
`claude://claude.ai/settings/connectors`, `https://chatgpt.com/connector_platform_oauth_redirect`,
`https://claude.ai/api/mcp/auth_callback`, `https://insiders.vscode.dev/redirect`,
`https://oauth.pstmn.io/v1/callback`, `https://vscode.dev/redirect`,
`http://localhost`, `http://localhost/callback`, `http://127.0.0.1`, `http://127.0.0.1/callback`.

To use a custom domain/client, request whitelisting from Swiggy's developer team.

## Official limitations (verbatim)
> Third-party app development is not permitted at this time due to ongoing security reviews
> and compliance requirements. Stay tuned for updates on expanded access.

> Keep the Swiggy app closed while using these MCP integrations.

> COD orders — review your cart before checkout. Orders placed cannot be cancelled.
