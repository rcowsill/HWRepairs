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

{% include "post-list" -%}
{% endif -%}
