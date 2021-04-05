---
title: "Server-Server API"
linkTitle: "Server-Server API"
weight: 9
description: >
  Establishes communication between servers. Ideally, even mobile applications will use this.
---

Federated Manga servers use the Server-Server APIs to communicate with each other.
Servers use these APIs to push catalog changes to each other in real-time, and to retrieve
older catalog entries from each other. Much of the design is borrowed from the [Matrix project](https://matrix.org)
and has simply been adapted for use with manga distribution.

## Server Discovery

### Servers and Load Balancers

Anyone can host a server, but some scanlators will put themselves in charge of
extremely popular manga, attracting a weekly DDoS. To combat this, servers should advertise
a volunteer's server, who are trusted to mirror the catalog and keep it alive even if the main
server goes down.

### Why this design?

This design is a compromise in a world without IPFS-hosted catalogs. Individual instances
are fully capable of doing their own load balancing using multiple DNS records, HAProxy,
or cloud services, but on failure they will still take their entire catalog down with them.
With this design, new users will not be able to access the catalog, but it will still be
cached for old users.

Of course, the final solution is to host the actively updated catalog on a P2P swarm. But
such a thing has never been made nor proven to work. IPFS with IPNS/Namecoin/etc. are too
complicated, and no one really understands how to design an application with these tools.
Much of this work would be completely deprecated by a competent fully P2P design.

Never forget that **whatever we make needs to be usable by those with no technical expertise**.
Until we have a design revelation, this is the compromise we need to work with.

{{% http-api spec="server-server" api="wellknown" %}}

## Server Implementation

{{% http-api spec="server-server" api="version" depth=3 %}}

## Signing Keys

Federation allows third party servers to mirror releases by scanlation groups.
In order to prevent a user's orders of christmas cake being replaced by cheese pizza,
the amount of *"dude trust me"* needs to be minimized. To do this, we use asymmetric keys to
sign releases by groups, and catalogs from servers. The concept is more-or-less analogous
to package management mirroring in Linux.

The issue is further confounded by the fact that
**federated networks don't have trusted third parties**. The design is borrowed from the
[Matrix protocol](https://matrix.org/docs/spec/server_server/r0.1.4#publishing-keys), which
allows servers to act as a witness (aka notary), claiming to know the published signing key
of an offline server. More witnesses will result in less *"dude trust me"*.

**NOTE:** The server hosting the original releases always has *"dude trust me"*.
In other words, if multiple scanlation groups decide to congregate at a single server,
every group needs to give the server absolute trust.

{{% http-api spec="server-server" api="server_keys" depth=3 %}}

{{% http-api spec="server-server" api="server_witness" depth=3 %}}
