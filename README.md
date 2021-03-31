# Federated Manga <!-- omit in toc -->

[![github pages](https://github.com/Federated-Manga/federated-manga-docs/actions/workflows/hugo.yml/badge.svg)](https://github.com/Federated-Manga/federated-manga-docs/actions/workflows/hugo.yml)

## Table of Contents <!-- omit in toc -->

- [1. Rationale and Goals](#1-rationale-and-goals)
  - [1.1. Non-Goals](#11-non-goals)
  - [1.2. Nice-To-Haves](#12-nice-to-haves)
- [2. Bikeshedding](#2-bikeshedding)
- [3. Building](#3-building)

## 1. Rationale and Goals

Federated Manga seeks to define a content distribution protocol for a network of manga serving instances, ensuring that users will never have to live in fear of a single large service failing, resulting in extended downtime or major loss of content.

- Scanlation teams should be able to effortlessly spin up an instance, even with limited technical expertise.
- Scanlation teams should be able to provide links to their social media, websites, etc.
- Scanlation teams should be able to delegate and revoke various responsibilities to multiple users.
- Volunteers should be able to support scanlation teams by participating in load balancing of the catalog, ensuring scalability, and avoiding a single point of failure.
- Instances should be able aggregate together the results of multiple other instances, curating their own content, deciding for themselves what they want to see and serve.

### 1.1. Non-Goals

- Federated Manga is for content distribution. Ratings and discussion are the domain of social networks, and **Federated Manga is not a social network.**
- Federated Manga is a protocol, so moderation of instances is obviously up to the owners of those instances.

### 1.2. Nice-To-Haves

- Scanlation teams should be able to provide non-authoritative metadata (e.g. series names, descriptions, cover images).
- Users should be able to overwrite metadata with their own, or with metadata pulled from an independently operated service dedicated to the task.
- Users should be able to filter releases based on metadata.
- A reference reader should be provided for lack of a better solution.
- Mobile devices should be capable of running Federated Manga instances, barring walled-garden restrictions.

## 2. Bikeshedding

- The source code license will be determined at a later time by major contributors.
- Because Federated Manga is a protocol, the language used is not relevant. The reference implementation will use Golang simply because it is what IPFS is written in, and that will make things easier.

## 3. Building

This repository was designed to be developed in [VS Code using Development Containers](https://code.visualstudio.com/docs/remote/containers).
Ensure [the feature is correctly set up](https://code.visualstudio.com/docs/remote/containers#_system-requirements).

Simply clone the repo:

```bash
git clone --recurse-submodules git@github.com:Federated-Manga/federated-manga-docs.git 
```

And execute the "Start Hugo Server" launch configuration in the "Run And Debug" menu. Everything should just work, and a browser tab will open.
