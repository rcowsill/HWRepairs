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

<ul>
  {%- assign latest_posts = site.posts | slice: 0, 1 -%}
  {%- for post in latest_posts %}
  <li>
    <a href="{{ post.url }}">{{ post.title }} ({{ post.date | date: "%e %b %Y" }})</a>
    <ul><li>{{ post.excerpt | split: "<!-- page_excerpt -->" | last }}</li></ul>
  </li>
  {%- endfor %}
</ul>
{%- endif %}
