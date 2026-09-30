# Vino Alert for Claude

Ask Claude what a wine costs right now. Vino Alert tracks live listings from
curated wine retailers, so Claude can tell you the lowest price, which store has
it, how many retailers carry it, when the price was last verified, and whether it
sits under what stores typically charge. Send a photo of a label or a wine list
and Claude reads it and looks each wine up.

No account, key or sign-in is needed.

## What it includes

- **The Vino Alert connector**, a remote MCP server at
  `https://api.vinoalert.com/mcp/` with three read-only tools:
  - `search_wines`: find a wine by producer, name, vintage or label text.
  - `get_wine_prices`: current listings for one wine, sorted by price, with the
    typical price, retailer count and whether the lowest is a deal. Optionally
    narrowed to one vintage, bottle size, or stores that ship to a country or US
    state.
  - `find_store_deals`: the best-priced wines at one store right now, optionally
    narrowed by grape, region, country, type or price.
- **The `wine-prices` skill**, which tells Claude when to use those tools and how
  to answer: lead with the lowest price and its link, say how many retailers it is
  based on and when it was verified, and flag in-bond, pre-arrival and case-only
  listings.

## Try it

- "What does Ridge Three Valleys 2021 cost right now?"
- "Is $170 a good price for 2020 Caymus Special Selection?"
- "I'm at Astor Wines. What are the best deals on Riesling?"
- Send a photo of a label: "Where is this cheapest?"

## What it sends and fetches

The plugin runs nothing on your machine. When Claude calls a tool, it sends the
tool's arguments (the wine or store you asked about, and any vintage, size,
country, state, grape, region, type or price you mentioned) to
`https://api.vinoalert.com/mcp/`, and Vino Alert returns prices from its catalog.
Nothing is written, bought or changed. Vino Alert's
[privacy policy](https://vinoalert.com/legal/privacy-policy/) covers the service.

## Support

Email [support@vinoalert.com](mailto:support@vinoalert.com) or visit
[vinoalert.com/contact](https://vinoalert.com/contact/).

## License

MIT. See [LICENSE](LICENSE).
