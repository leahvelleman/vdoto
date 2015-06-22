---
layout: page
title: All posts
---
<dl>{% for post in site.posts %}
<dt><a href="{{ post.url }}">{{ post.title }} ({{ post.date | date_to_string }})</a></dt>
<dd><i> {{ post.foo }} </i></dd>
{% endfor %}
</dl>
