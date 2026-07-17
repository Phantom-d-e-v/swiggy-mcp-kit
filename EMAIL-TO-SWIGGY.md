Subject: Building on the Swiggy MCP — what we've shipped, what we propose, and a partner/whitelisting ask

Hi Swiggy Developer Team,

We've been building on the official Swiggy MCP (mcp.swiggy.com/{food,im,dineout}, per
github.com/Swiggy/swiggy-mcp-server-manifest) and wanted to share what we've done, what we
plan to build, and how we might help Swiggy — plus one concrete whitelisting request.

WHAT WE'VE BUILT (personal-use, compliant with the manifest's "Other MCP Clients" path)
Open kit: github.com/Phantom-d-e-v/swiggy-mcp-kit  (MIT, free)
  - Rasoi — a cook-vs-order decider: user says "butter chicken for 2, mild" and gets a
    side-by-side of an Instamart grocery plan (items, cook time, price, ETA) vs nearby Swiggy
    Food restaurants (price, rating, delivery time), then places the chosen COD order.
  - Splitr — a District-style group split across Food + Instamart + Dineout: one shared ledger
    where every Swiggy charge posts as a line, friends join via a code, agent settles who-owes-whom.
Both run as paste-in agent prompts on Claude/Cursor/VS Code/ChatGPT (we've connected the Swiggy
plugin in ChatGPT). Strictly track-only on payments (COD only, no money movement), and we follow
the manifest rules (app-closed during sessions, cart-review gate, no cancellation handling).

WHAT WE PROPOSE TO BUILD NEXT (roadmap, research-backed)
  - Party Mode — one prompt chains a Dineout table booking + Instamart delivery to the table +
    Food, and splits it across the group. The clearest cross-surface orchestration demo.
  - Rasoi Week Planner — a consolidated cross-recipe Instamart cart under a budget.
  - Restock agent — reorder past Instamart carts.
  - A ChatGPT Plugin wrapping Rasoi + Splitr, distributed via the new Plugin directory.

HOW WE CAN HELP SWIGGY
  - Drive MCP adoption: we're producing public demos, docs, and a starter kit that gets more
    users genuinely using the official MCP (cook-vs-order, group split, party orchestration).
  - Surface capability gaps back to you (e.g. deliver-to-non-home address for Party Mode;
    order-history exposure for Restock) so the MCP improves.
  - Build reference workflows Swiggy could feature, not compete with.

THE POLICY QUESTION (from the manifest's "third-party app development is not permitted" note)
We want to confirm the compliant boundary as we grow beyond personal use:
  - Is a client where EACH end user authenticates their OWN Swiggy account via OAuth (a "different
    MCP client," like the documented Claude/ChatGPT/VS Code integrations) permitted today, or does
    the third-party ban cover this too?
  - If a user-connects-own-account model is acceptable, what are the requirements (security review,
    terms, branding) to ship it — and is there a partner/affiliate program we should apply to?

REDIRECT URI WHITELISTING
The manifest says "contact us if you need additional URIs whitelisted." We'd like to request
whitelisting of:
  - https://phantomclaw.in/oauth/callback
  (We can supply additional production subdomains once the model above is confirmed.)
Please advise the process and any info you need (entity, use description, security docs).

WHAT WE'RE NOT ASKING FOR
No order commission, no payment rail, no access to other users' accounts, no prepaid/UPI — only
the ability to be a compliant client that drives a user's own authenticated session, and a channel
to coordinate with Swiggy on MCP adoption.

Happy to share the architecture doc, the demo recordings, or jump on a call. Thanks for building
the MCP — we'd like to do this the right way and help it succeed.

Best,
[Your Name]
[Your email / GitHub / company if any]
