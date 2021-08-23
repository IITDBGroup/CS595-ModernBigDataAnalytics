---
title: Notebooks
permalink: notebooks.html
---


{% for typ in site.data.notebooks.types %}

# {{ typ.longname }}

{{ typ.description }}

    {% assign nbs = site.data.notebooks.notebooks | where: "type", {{ nbs.shortname }} %}

    {% for nb in nbs %}
* [{{ nb.description }}]({{ site.baseurl }}/notebooks/{{ nb.filename }}.ipynb.html)
    {% endfor %}

{% endfor %}


# Running the notebooks yourself

I am using [https://jupyter.org/](Jupyter). The easiest way to run the environment with docker (see `startNotebook.sh` in the `notebooks` folder).
