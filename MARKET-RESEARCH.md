# Market Research — Swiggy MCP Product Opportunities

> Research conducted July 2026 (GitHub search, DuckDuckGo). Findings drive what we build next.
> Source of truth: official Swiggy MCP manifest + live competitor landscape.

---

## 1. The Ecosystem Is Early But Real (first-mover window open)

GitHub signal (verified):
- `Swiggy/swiggy-mcp-server-manifest` — **145 stars**, official.
- Community builds already exist:
  - `ankitdey01/swiggymcpbuild-discord` — Discord bot, OAuth 2.1 PKCE (proves multi-user bot path).
  - `DeepBhupatkar/swiggy-voice-ai-agent` — phone/WhatsApp voice agent (VideoSDK).
  - `pranjal-joshi/ha-swiggy-mcp` — Home Assistant add-on (automate ordering via smart home).
  - `Hardik500/quick-commerce-mcp` — aggregates Zepto + Instamart + BigBasket.
  - `hemachandran2406/swiggy-zomato-mcp` — cross-platform (Swiggy + Zomato).
- **Nobody has shipped a polished consumer product.** All are demos/integrations.

**Implication:** We are early. The differentiator is *product polish + a clear use case*, not the MCP connection (which is now commodity).

---

## 2. Split-Bill Is a RED OCEAN — Do Not Build "Another Splitwise"

DuckDuckGo signal (verified, 2026):
- Dominated by **Splitwise** + a wave of India-specific, **UPI-native** alternatives:
  - FairShare, Hisaab (explicitly "completely free"), and ~7+ "Splitwise Alternatives 2026" listicles.
- These are mature, free, and UPI-connected.

**Implication:** A standalone Splitr app = losing fight. The ONLY defensible angle is
**auto-ingesting Swiggy charges into a split** — none of those alternatives connect to Swiggy MCP.
→ Keep Splitr as a *feature* (auto-fed ledger), NOT a standalone product competing on splitting UX.

---

## 3. District Already Unifies the Three Surfaces — Don't Rebuild "Unify"

District (Swiggy super-app) already puts Food + Instamart + Dineout in one wallet/app.
Our edge is NOT "combine them" (District does). Our edge is:
- **Comparison intelligence** (Rasoi: cook-vs-order — District wants you to order, never compares to cooking).
- **Agent automation** (natural-language orchestration across surfaces — first-party apps ship slower).

---

## 4. Validated Opportunity Map (what to build, ranked)

| Rank | Idea | Why (evidence) | Risk |
|---|---|---|---|
| 1 | **Party Mode** (chain Dineout book + Instamart-to-table + Food, split all) | Uses all 3 surfaces; most demo-worthy; no competitor does cross-surface orchestration | Needs deliver-to-restaurant address support (VERIFY) |
| 2 | **Rasoi Week Planner** (consolidated cross-recipe Instamart cart + budget) | Swiggy can't do cross-recipe carts; clear daily utility | Low |
| 3 | **Restock agent** (reorder past Instamart carts) | High repeat usage; simple | Needs order-history tool (VERIFY exposure) |
| 4 | **Splitr-as-feature** (auto-fed ledger into Splitwise/UPI export) | Only defensible split angle; avoids red ocean | Depends on MCP charge capture |
| 5 | **ChatGPT Plugin wrapper** (distribute Rasoi+Splitr) | Plugin directory now exists; turns personal kit → distributable | Needs Swiggy's ok / whitelisting (email sent) |

## 5. What NOT to build (killed by research)
- Standalone split-bill app (Splitwise + UPI alternatives own this).
- "Unify Food/Instamart/Dineout" app (District already does).
- Anything needing prepaid/UPI collection via MCP (COD-only; payment rail = partner-program only).

## 6. Strategic recommendation
1. Ship **Party Mode** as the flagship demo (social wow + uses your connected plugin).
2. Fold **Splitr** into Rasoi as a "split this order" button — not a separate product.
3. Pursue **ChatGPT Plugin** packaging for distribution (aligns with the July 2026 directory migration).
4. Keep monetization on recipe data + premium agents (already documented), not order cuts.

## 7. Open verifications before building Party Mode / Restock
- [ ] Does Dineout MCP allow booking, and can Food/Instamart deliver to a *non-home* address (restaurant)?
- [ ] Does the Food/Instamart MCP expose order history (for Restock)?
- [ ] Can the ChatGPT Swiggy plugin be wrapped by a custom Plugin, or only used directly?
