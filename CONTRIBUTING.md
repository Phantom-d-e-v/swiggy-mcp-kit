# Contributing

Thanks for wanting to improve the Swiggy MCP Kit.

## Scope
This kit is a **personal-use, compliant** layer over the official Swiggy MCP. Keep contributions
within that boundary:
- ✅ New recipes / diet variants in `templates/recipes.json`
- ✅ Improved agent prompts in `prompts/`
- ✅ Installer support for more MCP clients
- ✅ Docs / REFERENCE.md accuracy
- ❌ Anything that moves money, resells Swiggy access, or collects other users' logins
- ❌ Third-party app hosting until Swiggy's partner program permits it

## How to contribute
1. Fork `github.com/Phantom-d-e-v/swiggy-mcp-kit`.
2. Branch: `git checkout -b fix/your-change`.
3. Test `bash install.sh` and a dry prompt run locally.
4. Open a PR with a clear description of the change and why.

## Recipe contributions
Add an entry to `templates/recipes.json`:
```json
{
  "id": "r-unique-id",
  "name": "Dish Name",
  "base_dish": "dish name for search",
  "servings_default": 2,
  "spice_default": "medium",
  "diet_default": "non-veg",
  "cook_minutes": 40,
  "bom": [ { "ingredient": "item", "qty_per_serving": 200, "unit": "g" } ],
  "substitution_rules": { "keto": ["item -> replacement"] }
}
```
Verify ingredient names are searchable on Instamart before submitting.

## Code of conduct
Be respectful. Keep it compliant with Swiggy's MCP terms.
