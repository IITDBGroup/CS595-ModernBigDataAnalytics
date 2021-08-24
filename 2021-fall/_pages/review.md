---
title: Project
permalink: /review.html
classes: wide
---

# Overview

During the course you will read and summarize several research papers covering state-of-the-art techniques in Big Data processing. Each student will present one or two of these papers in class. Papers that are required reading have to be read by all students in the class. For your presentation, you can select any paper that is not required.

# Papers

{% for cat in site.data.categories %}

## {{ cat.name }}

    {% assign papers = site.data.papers %}

    {% for paper in papers %}
        {% if paper.category == cat.id %}
* {% if paper.required %}**(REQUIRED)** {% endif %}**{{ paper.title }}**, *{{ paper.authors}}*, {{ paper.venue }}, {{ paper.year }}
        {% endif %}
    {% endfor %}

{% endfor %}


# Getting access to papers

I will make the papers available to all students in the course.
