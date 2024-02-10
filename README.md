{% comment %}blah{% endcomment %}# Title Test

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
{% assign post_limit = 2 -%}
{% include post-list.html limit=post_limit -%}
{% if site.posts.size > post_limit -%}
**[More...](\blog)**
{% endif -%}
{% endif -%}
