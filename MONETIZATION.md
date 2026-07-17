# Monetization Strategy — Swiggy MCP Kit (Rasoi + Splitr)

> Honest framing first: **you cannot charge for Swiggy MCP access itself.** Swiggy paused
> third-party app dev, and the MCP is account-bound COD with no payments API. So the money is
> NOT in the orders — it's in the **tooling, data, and audience** around the MCP.
> Below, each idea is tagged: ✅ allowed now · ⏳ needs Swiggy partner program · ⚠️ compliance risk.

---

## ❌ What you must NOT do (the trap)
- **Take a cut of orders / run a payment rail.** That's a payment aggregator / requires Swiggy's
  commercial agreement. The agent is track-only by design — keep it that way.
- **Sell "Swiggy access" as if it's yours.** You're reselling someone else's API — ToS violation.
- **Collect other people's Swiggy logins.** Account sharing = ban. Tier-1 kit makes each user
  connect their *own* account. Keep it that way until Tier-2 is approved.

---

## ✅ Allowed now (build immediately)

### 1. Curated Recipe Data (one-time + subscription)
The MCP does product search, **not recipes**. A clean, India-specific recipe BOM database
(ingredients, qty/serving, cook time, diet substitutions) is the real asset. The kit ships 2
starters; sell packs: "200 Indian dishes BOM," "Keto Indian," "Festival thalis."
- Model: ₹199 one-time packs, or ₹49/mo for the full library auto-synced into recipes.json.
- Why it's safe: you're selling *content*, not Swiggy access.

### 2. Premium Prompt Packs / "Agents"
The free kit has base prompts. Sell vertical agents: "Rasoi Pro" (meal-planning + budget
optimization), "Splitr Host" (recurring group events, settlements to Google Sheet).
- Model: one-time ₹299–₹999 per agent pack. Delivered as markdown + JSON, same install flow.

### 3. Hosted Convenience (the gray-but-defensible Tier-2 play)
Once you get URI whitelisting (see email), run a small web/Telegram bot where a user connects
*their own* Swiggy account and you provide the UX (pretty comparison cards, QR join, auto-settle).
Charge a **SaaS subscription**, NOT per-order commission.
- Model: ₹99/mo "Splitr Host" for people who don't want to run Claude.
- Safe because: user connects own account, you don't touch money, you're a client not a reseller.

### 4. Audience → Affiliate (long game)
A YouTube/Twitter showing "I built a Swiggy MCP split-bill agent" pulls dev + foodie audience.
Monetize via: general tech affiliates (hosting, AI tools), not Swiggy (no program exists).
- Model: content → newsletter → sponsored dev-tool slots.

---

## ⏳ Needs Swiggy partner program (don't build yet, but be ready)
- **Per-order commission / white-label app** with other people's accounts.
- **Prepaid/UPI via MCP** (today COD only).
- These unlock only when "expanded access" opens. Architect the kit so flipping to a partner
  backend is a config change, not a rewrite.

---

## 🎯 Recommended sequence
1. Ship kit free (Tier-1) → build audience + GitHub stars.
2. Sell Recipe Packs + Premium Agents (✅ now, zero risk).
3. Email Swiggy (Tier-2) → on approval, launch hosted SaaS (✅ allowed as client).
4. If partner program opens → evaluate commercial agreement (⏳).

## Realistic numbers (illustrative)
- 5k GitHub stars + 2k newsletter → 200 recipe-pack buyers × ₹199 = ₹40k/mo.
- 300 SaaS subs × ₹99 = ₹30k/mo (post Tier-2).
- Totals are content/SaaS revenue, fully compliant. No order-cut, no payments rail.

---

## Bottom line
The MCP is the **distribution hook**, not the revenue. Money comes from owning the recipe data,
the premium agent layer, and the audience — all of which are yours to sell today.
