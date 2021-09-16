---
title: Literature Review
permalink: /review.html
classes: wide
---

# Overview

During the course you will read and summarize several research papers covering state-of-the-art techniques in Big Data processing. Each student will present one of these papers in class. Papers that are required reading have to be read by all students in the class.

> For your presentation, you can select any paper that is **not marked as required**.
{: .notice--info }

> Please select a paper until **{{ site.data.course.due.paper_selection }}**.
{: .notice--info }

> The papers are available through [google drive](https://drive.google.com/drive/folders/1zML2thsCOlxGFGdk5KSfXRPfHicvpNbw?usp=sharing)
{: .notice--info }

# Presentation and Report

Please prepare a **20-25 minute talk with slides** to present the paper you have been assigned. The whole presentation including Q&A should be 30-35 minutes. Furthermore, you need to write a report explaining and criticizing the presented techniques.

> The schedule for presentations is shown below.
{: .notice--info }

> The report is due on **{{ site.data.course.due.paper_report }}**.
{: .notice--info }

## Help for writing the report, preparing slides, and giving a talk

How to give a presentation and prepare slides:

- [Page](http://www.cs.duke.edu/brd/Teaching/Giving-a-talk/giving-a-talk.html) giving information on how to give a talk and prepare slides.
- [http://www.eecs.berkeley.edu/~messer/Bad_talk.html](http://www.eecs.berkeley.edu/~messer/Bad_talk.html) - Tutorial on how to give a (bad) good talk.
- [Other slides](http://dblab.cs.toronto.edu/~miller/docs/howto_talk.pdf) on how to give a good talk

How to write a scientific article:

- [Page](http://dblab.cs.toronto.edu/~miller/index.php?p=resources) on how to write an CS article. Also comments on some general writing rules.
- Simon Peyton Jones [slides](https://research.microsoft.com/en-us/um/people/simonpj/papers/giving-a-talk/writing-a-paper-slides.pdf) and  [video](http://www.youtube.com/watch?v=g3dkRsTqdDA) on how to write a great research paper


# Presentation Schedule

| Student   | Paper                                                                                                   | Presentation Date |
|-----------+---------------------------------------------------------------------------------------------------------+-------------------|
| Sharma    | The Google file system                                                                                  | 10/05/21          |
| Waghela   | Dynamo: Amazon's highly available key-value store                                                       | 10/05/21          |
| Patel     | Cassandra: a decentralized structured storage system                                                    | 10/07/21          |
| Rizvi     | Apache flink: Stream and batch processing in a single engine                                            | 10/07/21          |
| Singh     | Skipping-oriented partitioning for columnar layouts                                                     | 10/12/21          |
| Xie       | Milvus: A Purpose-Built Vector Data Management System                                                   | 10/12/21          |
| Campbell  | Incremental, Iterative Data Processing With Timely Dataflow                                             | 10/14/21          |
| Cornelius | Tracing nested data with structural provenance for big data analytics                                   | 10/19/21          |
| Mohammed  | Apache Calcite: A Foundational Framework for Optimized Query Processing Over Heterogeneous Data Sources | 10/19/21          |
| Tang      | Kafka: A distributed messaging system for log processing                                                | 11/09/21          |


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
