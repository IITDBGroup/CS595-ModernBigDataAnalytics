---
title: Literature Review
permalink: /review.html
classes: wide
---

# Overview

During the course you will read and summarize several research papers covering state-of-the-art techniques in Big Data processing. Each student will present one or two of these papers in class. Papers that are required reading have to be read by all students in the class. For your presentation, you can select any paper that is **not required**. Please select a paper until **{{ site.data.course.due.paper_selection }}**.

- The papers are available through [google drive](https://drive.google.com/drive/folders/1zML2thsCOlxGFGdk5KSfXRPfHicvpNbw?usp=sharing)

# Presentation and Report

Please prepare a **20-25 minute talk with slides** to present the paper you have been assigned. The whole presentation including Q&A should be 30-35 minutes. Furthermore, you need to write a report explaining and criticizing the presented techniques. The report is due on **{{ site.data.course.due.paper_report }}**.

## Help for writing the report, preparing slides, and giving a talk

How to give a presentation and prepare slides:

- [Page](http://www.cs.duke.edu/brd/Teaching/Giving-a-talk/giving-a-talk.html) giving information on how to give a talk and prepare slides.
- [http://www.eecs.berkeley.edu/~messer/Bad_talk.html](http://www.eecs.berkeley.edu/~messer/Bad_talk.html) - Tutorial on how to give a (bad) good talk.
- [Other slides](http://dblab.cs.toronto.edu/~miller/docs/howto_talk.pdf) on how to give a good talk

How to write a scientific article:

- [Page](http://dblab.cs.toronto.edu/~miller/index.php?p=resources) on how to write an CS article. Also comments on some general writing rules.
- Simon Peyton Jones [slides](https://research.microsoft.com/en-us/um/people/simonpj/papers/giving-a-talk/writing-a-paper-slides.pdf) and  [video](http://www.youtube.com/watch?v=g3dkRsTqdDA) on how to write a great research paper


# List of Papers

{% for cat in site.data.categories %}

## {{ cat.name }}

    {% assign papers = site.data.papers %}

    {% for paper in papers %}
        {% if paper.category == cat.id %}
* {% if paper.required %}**(REQUIRED)** {% endif %}**{{ paper.title }}**, *{{ paper.authors}}*, {{ paper.venue }}, {{ paper.year }}
        {% endif %}
    {% endfor %}

{% endfor %}
