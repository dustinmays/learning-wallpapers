# Real-time messaging: SSE vs WebSocket vs MQTT

## Learning goal

Help a software engineer who understands systems and DevOps—but is new to these protocols—build an intuitive mental model for when to choose Server-Sent Events, WebSocket, or MQTT.

## Source facts

- Server-Sent Events (SSE) is a one-way channel from an HTTP server to a browser/client. In browsers it uses `EventSource`, receives UTF-8 `text/event-stream` data, and reconnects by default if the connection closes.
- WebSocket provides a persistent, full-duplex (two-way) communication session between client and server. It supports text and binary messages. Application code generally owns reconnection behavior.
- MQTT is a lightweight, broker-mediated publish/subscribe messaging protocol. Clients publish messages to named topics; the broker distributes them to clients with matching subscriptions.
- MQTT delivery QoS levels are 0 “at most once,” 1 “at least once,” and 2 “exactly once.” MQTT also supports retained messages.
- SSE and WebSocket are natural direct browser/server choices. MQTT is a natural fit for IoT, telemetry, many-to-many distribution, and clients on constrained or unreliable networks.
- Sources: MDN Server-Sent Events, MDN WebSocket API, and the OASIS MQTT 5.0 standard.

## Exact text

All text below must be reproduced exactly. Do not add paragraphs or substitute synonyms.

REAL-TIME MESSAGING
SSE vs WebSocket vs MQTT

SSE
SERVER-SENT EVENTS
Server → Browser
One-way HTTP event stream
Simple • text events • auto-reconnect
BEST FOR
Live feeds • alerts • AI token streaming

WEBSOCKET
Client ↔ Server
Persistent, full-duplex connection
Low latency • text or binary
BEST FOR
Chat • games • live collaboration

MQTT
Publishers → Broker → Subscribers
Topic-based publish / subscribe
Lightweight • retained messages • QoS
QoS 0: at most once
QoS 1: at least once
QoS 2: exactly once
BEST FOR
IoT • telemetry • unreliable links

QUICK CHOICE
One-way browser updates?  SSE
Two-way browser interaction?  WebSocket
Many devices or services via topics?  MQTT

## Visual structure

- Landscape 16:9 desktop wallpaper, designed at 1792 × 1024 or the closest supported wide size.
- Large title area at top, followed by three equal-width comparison cards with ample gutters.
- Each card has one simple topology diagram near its top:
  - SSE: a server icon with a single right-pointing arrow to a browser icon.
  - WebSocket: a client/browser and server joined by two opposed arrows.
  - MQTT: two small publisher/device icons feeding a central broker, which fans out to two subscriber icons.
- Use distinct but harmonious accent colors: cool cyan for SSE, violet for WebSocket, warm amber for MQTT.
- Put “QUICK CHOICE” in one quiet, full-width strip below the cards, with three short decision prompts.
- Maintain generous outer safe margins. Keep the upper-right area visually calm enough for desktop icons and the bottom edge quiet enough for a Dock.
- Strong hierarchy: topology first, one-sentence mental model second, traits third, use cases last.
- Do not include implementation code, ports, protocol stacks, vendor logos, clouds, extra comparison tables, or decorative filler.

## Display

- Mac/display: general Mac desktop wallpaper
- Resolution or aspect ratio: 16:9 landscape; use the closest supported high-resolution wide output
- Areas to keep visually quiet: outer 7% on all sides, top 6% for menu bar, upper-right for desktop icons, bottom 8% for Dock

## Style direction

Calm premium technical infographic. Deep navy-to-charcoal background with a very subtle grain or blueprint-grid texture. Crisp flat vector-like diagrams, lightly frosted cards, restrained glow, excellent contrast, rounded geometry, and a modern humanist sans-serif type style. Attractive and sophisticated without looking corporate or busy. Information density should feel comfortably sparse at desktop distance. No watermark, no logos, no tiny footnotes.

## Generation prompt

Use case: scientific-educational
Asset type: educational Mac desktop wallpaper
Primary request: Create a polished, spacious infographic that teaches the difference between SSE, WebSocket, and MQTT to a semi-technical software engineer. Make the three network topologies instantly understandable before the viewer reads the details.
Scene/backdrop: Deep navy-to-charcoal, subtly textured technical backdrop.
Style/medium: Premium flat vector-like information design with crisp topology diagrams and lightly frosted cards.
Composition/framing: 16:9 landscape. Large header, three equal comparison cards, then a low full-width quick-choice strip. Wide gutters and generous safe margins; keep upper-right and bottom edge calm.
Lighting/mood: Calm, focused, modern, softly luminous.
Color palette: Cyan SSE, violet WebSocket, amber MQTT, off-white text, muted slate secondary text.
Text: Reproduce only the exact text listed in the Exact text section, verbatim.
Constraints: Prioritize readable typography and exact spelling. Make arrows unambiguous. Keep each fact inside its correct card. Use topology icons as the central teaching device. Preserve all outer safe zones.
Avoid: Dense text, tiny type, spelling artifacts, duplicate labels, crossed connectors, gratuitous decoration, implementation code, ports, vendor branding, logos, watermark, excessive glow.

## Revision notes

- No reference image used by user request.
- Draft 1 established the accepted three-card composition but misspelled “auto-reconnect” and “collaboration.”
- Final targeted edit corrected those two words while preserving the design. Review passed for factual accuracy, text integrity, hierarchy, cropping, spacing, safe margins, and desktop readability.
