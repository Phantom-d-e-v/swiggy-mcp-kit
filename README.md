# swiggy-mcp-kit

Production-grade, copy-paste kit to use the **official Swiggy MCP** (`mcp.swiggy.com/{food,im,dineout}`)
with **your own Swiggy account**. No app, no server, no Swiggy approval needed.

Two agent experiences, driven by pasting a prompt into an MCP-enabled client (Claude Desktop / Cursor / VS Code):

- **Rasoi** — say *"butter chicken for 2, mild"* → side-by-side: Instamart grocery list + cook time + price + ETA **vs** nearby restaurants with price + delivery time. Pick one → agent places the COD order.
- **Splitr** — District-style group split across Swiggy Food + Instamart + Dineout. One shared ledger, friends join via a code, agent settles who-owes-whom.

## ⚠️ Important
Swiggy currently permits using the MCP with **your own account** (the documented "Other MCP Clients" path). Third-party *app* development is paused. This kit is the compliant personal-use approach. See `README.md` for the 5 hard rules (COD-only, no cancellation, keep the app closed).

## Quick start
```bash
bash install.sh          # wires config/mcp.json into Cursor / VS Code
# OR add the 3 servers from config/mcp.json to Claude Desktop connectors
```
Then paste `prompts/rasoi.md` or `prompts/splitr.md` into your chat.

## Files
| Path | Purpose |
|---|---|
| `config/mcp.json` | The 3 official Swiggy MCP servers |
| `install.sh` | Auto-install for Cursor / VS Code |
| `prompts/rasoi.md`, `prompts/splitr.md` | Agent prompts (paste into chat) |
| `templates/recipes.json`, `templates/piles.json` | Starter data |
| `REFERENCE.md` | Endpoint + capability map |
| `MONETIZATION.md` | How to make money compliantly |
| `EMAIL-TO-SWIGGY.md` | Template to request partner/whitelisting |

## License
MIT — see [LICENSE](LICENSE).
