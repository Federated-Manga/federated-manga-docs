---
title: "Client-Server API"
linkTitle: "Client-Server API"
weight: 9
description: >
  User-level operations for interacting with Federated Manga instances.
---

The Client-Server API is a simple lightweight API, allowing clients to perform read and write
operations tied to a user's identity. The primary difference between a lightweight client
and a heavyweight client is the amount of image data being stored and seeded.

An ideal mobile client is capable of aggregating together the catalogs of multiple release groups,
**while seeding.** Seeding may be enabled or disabled depending on VPN and data roaming settings.
This is a full instance, even though it does not expose a Server-Server API and cannot be found using DNS.
These are definitely **single-user instances.**

An ideal desktop client is similar, though it may expose a Server-Server API and can be found using DNS.
They will probably **expose a web-based front-end** on the local network.

An ideal server client **must** expose a Server-Server API and **must** be found using DNS.
Whether they expose a front-end over the internet is up to admin discretion.
These are most likely **multi-user instances.**

In other words, they are all pretty much the same.

This API is a work in progress to determine the pros and cons of regular user accounts versus
federated identity (Third Party Identifiers).

### Retrieving Individual Images?

For the health of the network, we have decided not to standardize an endpoint that would encourage
leeching behavior. We also don't want to presume we know what image formats people want to use, or
if images are even appropriate at all.

- Horrors have jump scares.
- Some comics have background music.
- Some comics are literal videos.
- Some release groups prevent scraping by showing a picture of Jesus before loading the actual image.
