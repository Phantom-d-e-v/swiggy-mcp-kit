Subject: Swiggy MCP — partner/whitelisting request for a user-connects-own-account agent (Rasoi + Splitr)

Hi Swiggy Developer Team,

I'm building on the official Swiggy MCP (mcp.swiggy.com/{food,im,dineout}, per
github.com/Swiggy/swiggy-mcp-server-manifest) and would like to clarify the path to a
multi-user client and request an OAuth redirect URI whitelisting.

WHAT I'M BUILDING
Two agent experiences driven by the official MCP, used by people through their OWN Swiggy accounts:
  1. Rasoi — a cook-vs-order decider: user says "butter chicken for 2, mild", agent compares an
     Instamart grocery plan vs nearby Swiggy Food restaurants side-by-side, then places the chosen COD order.
  2. Splitr — a District-style group split across Food + Instamart + Dineout: one shared ledger
     where every Swiggy charge posts as a line, friends join via a code, and the agent settles who-owes-whom.
Both are strictly track-only on payments (COD only, no money movement) and follow the manifest's
rules (app-closed during sessions, cart-review gate, no cancellation handling).

THE POLICY QUESTION (from the manifest's "third-party app development is not permitted" note)
I want to confirm the compliant boundary:
  - Is a client where EACH end user authenticates their OWN Swiggy account via OAuth (i.e. a
    "different MCP client," analogous to the documented Claude/ChatGPT/VS Code integrations)
    permitted today, or does the third-party ban cover this too?
  - If a user-connects-own-account model is acceptable, what are the requirements (security review,
    terms, branding) to ship it?

REDIRECT URI WHITELISTING
The manifest says "contact us if you need additional URIs whitelisted." I'd like to request
whitelisting of:
  - https://rasoi.example.com/oauth/callback
  (I can supply the final production domain once the model above is confirmed.)
Please advise the process and any info you need from me (company/entity, use description, security docs).

WHAT I'M NOT ASKING FOR
No order commission, no payment rail, no access to other users' accounts, no prepaid/UPI — only
the ability to be a compliant client that drives a user's own authenticated session.

CONTEXT / REFERENCES
  - Official manifest: https://github.com/Swiggy/swiggy-mcp-server-manifest
  - I've shipped a free, personal-use kit (Tier-1) that uses the documented "Other MCP Clients"
    config and would extend it to a hosted client only with your go-ahead.

Happy to jump on a call or share the architecture doc. Thanks for building the MCP — keen to do
this the right way.

Best,
[Your Name]
[Your email / GitHub / company if any]
