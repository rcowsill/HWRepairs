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

{%- if site.posts.size > 0 %}
## Posts
  {% for post in site.posts -%}
* [{{ post.title }}]({{ post.url }}) ({{ post.date | date: %e %b %Y }})
  - {{ post.excerpt | split: "<!-- page_excerpt -->" | last }}
  {%- endfor %}
{%- endif -%}
