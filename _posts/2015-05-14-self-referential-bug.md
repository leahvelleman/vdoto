---
layout: post
title: "A bug that solves itself"
tags:
 - tech
 - jekyll
 - self-reference
---

Today I found a bug that solves itself. Not "fixes" --- "solves," by
presenting the user with advice on _how_ to fix it. The user gets this advice
completely by accident: it is not in the form of a helpful error message created
by the programmer. What the bug does is --- _accidentally,_ instead of the
desired behavior --- cause a Google search to be run; and that Google search
returns a number of blog posts documenting the bug itself.

That means the bug is also arguably self-referential: the bug involves a
description of itself (or, more precisely, involves a search term that is most
commonly used in descriptions of the bug itself).

<hr/>

This blog uses Jekyll as a blog engine. Jekyll has a local server mode in which
it puts your blog up at a fake IP address, so that you can preview it in your
web browser without needing to upload it elsewhere.

The default fake IP address it uses is `0.0.0.0:4000` — which is not a valid destination
IP address. Still, most browsers in the past have been happy enough to treat it as one.

But the latest version of Google Chrome _doesn't_ recognize it as an IP
address. Instead, it does what Chrome normally does with things that aren't IP
addresses: it runs a Google search for it!

And it turns out what you get when you Google "0.0.0.0:4000" is… a long list of
posts by people complaining about this very bug in Jekyll, and offering
solutions.

<hr/>

In other words...
> *Bug #12345*    
> Expected behavior: Serves up a local version of my blog.    
> Actual behavior: Shows me a list of posts by other people — most of which describe, and explain how to fix, Bug #12345.
