# Vino Alert plugins

Vino Alert for Claude and ChatGPT: live wine prices across curated retailers, what
a wine costs right now, where it is cheapest, whether it is a deal, and the
best-priced wines at a given store. Both plugins connect to the same open MCP
server, `https://api.vinoalert.com/mcp/`, which needs no account or sign-in, and
nothing else: the server's own instructions and tool descriptions tell the
assistant how to use it, so both platforms behave the same.

| Folder | For | Submitted as |
|---|---|---|
| `claude/` | Claude (web, desktop, mobile, Cowork, Claude Code) | Plugin bundle from this GitHub repo, path `claude` |
| `chatgpt/` | ChatGPT and Codex | ZIP uploaded to platform.openai.com/plugins |

The icon is `claude/.claude-plugin/icon.svg`, with its 1024px PNG at
`chatgpt/assets/icon.png`.

## Claude

1. At [claude.ai/directory/manage](https://claude.ai/directory/manage), submit
   an **MCP connector** first: URL `https://api.vinoalert.com/mcp/`,
   authentication **None**, icon `chatgpt/assets/icon.png`.
2. Then submit a **Plugin bundle**: this repository, plugin path `claude`. The
   repository must be public before the listing goes live.
3. Pair the plugin with the connector in the portal.

Check locally with `claude plugin validate ./claude`.

## ChatGPT

1. Zip the **contents** of `chatgpt/` (select the files inside it, not the folder,
   so `plugin.json` sits at the root of the ZIP).
2. At [platform.openai.com/plugins](https://platform.openai.com/plugins), select
   **Upload new or existing plugin** and upload the ZIP.
3. Under **MCPs**, connect the server and complete domain verification by
   serving the challenge token at `/.well-known/openai-apps-challenge`.
4. Add the video walkthrough URL in **Review details**, then submit for review.

The review test cases, listing text and URLs are in `chatgpt/plugin.json` and
import with the ZIP. Bump `version` in both manifests with each release.

## Support

[support@vinoalert.com](mailto:support@vinoalert.com)
