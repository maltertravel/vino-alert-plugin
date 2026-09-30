---
name: wine-prices
description: Look up what a wine costs right now across retailers, whether a price is a good deal, where it is cheapest, and the best-priced wines at a given store. Use when someone names a wine, shares a label photo or a wine list, asks "is this a good price", or says they are at or shop at a wine store.
---

# Wine prices with Vino Alert

Vino Alert tracks live listings from curated wine retailers. Its tools only read
public prices; they never buy anything or change anything.

## Price a wine

1. Call `search_wines` with the producer and wine name as written on the label
   ("Ridge Three Valleys 2021"). For a photo, read the label and pass what it says.
   A year in the query is lifted out and returned as `vintage_hint`.
2. Pick the result that is the same wine. If two results are plausibly the same
   bottle (for example a Riserva and the regular bottling), ask which one rather
   than guessing. If nothing matches, try fewer words: the producer and the main
   name.
3. Call `get_wine_prices` with the wine's `id`, and pass `vintage` when the user
   named one (or `vintage_hint` was returned). If the user says where they live,
   pass `country`, and `state` for the US, so only stores that ship there count.

## Answer

- Lead with the lowest price, the store, and a link to the listing.
- Say how many retailers the price is based on (`retailer_count`) and when it was
  last verified (`verified_at`). Prices change; never present them as permanent.
- Compare with `typical_usd` and say whether it is a deal (`deal_pct`). If there
  is no typical price, say the market is too thin to judge.
- Mention any listing's `note`: in bond (duty and taxes not included),
  pre-arrival (sold before it arrives), or sold only by the case.
- Prices exclude shipping and tax. Never invent a price or a store that the
  tools did not return.

## Deals at a store

When the user is at a store or shops at one, call `find_store_deals` with the
store as they name it, plus any grape, region, country, type or price they
mention. Quote each wine's price with the store link, the typical price, and how
many retailers the typical price is based on. Wines with `deal: false` are the
store's closest to typical, not deals; say so.

## Limits

Vino Alert cannot buy wine, hold stock, or set up price alerts from the chat.
For alerts, point the user to https://vinoalert.com. Listings are the retailers'
own online prices; a shelf price in a shop can differ.
