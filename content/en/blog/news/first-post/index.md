---
date: 2018-10-06
title: "Better reading with Federated Manga"
linkTitle: "Announcing Federated Manga"
description: "The Federated Manga Protocol deprecates all other readers."
author: Anonymous
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: Anonymous / WTFPL"
---

**This is a typical blog post that includes images.**

The front matter specifies the date of the blog post, its title, a short description that will be displayed on the blog landing page, and its author.

## Including images

Here's an image (`featured-loss.png`) that includes a byline and a caption.

{{< imgproc loss Fill "600x300" >}}
Fetch and scale an image in the upcoming Hugo 0.43.
{{< /imgproc >}}

The front matter of this post specifies properties to be assigned to all image resources:

```
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: Anonymous / WTFPL"
```

To include the image in a page, specify its details like this:

```
{{< imgproc loss Fill "600x300" >}}
Fetch and scale an image in the upcoming Hugo 0.43.
{{< /imgproc >}}
```

The image will be rendered at the size and byline specified in the front matter.
