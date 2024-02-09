---
title: Title Testing 123
---
{% comment %}blah{% endcomment %}
# Title Test

# Hardware Repairs

[Main Page](Something/Whatnot)

```
page layout: {{ page.layout }} 
```

{% raw %}
{% show_more summary... %}
Details etc...
{% endshow_more %}
{% endraw %}

{% if site.posts.size > 0 -%}
## Posts

{% include post-list.html limit=3 -%}
{% endif -%}

`Page.title = {{ page.title }}`
