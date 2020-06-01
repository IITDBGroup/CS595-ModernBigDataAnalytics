---
layout: single
permalink: index.html
author_profile: true
---

# Overview

This course teaches you about systems, algorithms, and the fundamental principles that enable distributed analysis of very large datasets using high-level languages, i.e., *Modern Big Data Analytics*.

 <!-- * **Getting started**: install Java and familize yourself with tools: [here]({{ site.baseurl }}/bootstrap.html) -->
* **Lecture**: overview of content covered in the lectures: [here]({{ site.baseurl }}/lectures.html)
* **Project**: information about the project: [here]({{ site.baseurl }}/project.html)
* **Literature review**: information about the literature review: [here]({{ site.baseurl }}/review.html)

# Textbook

>*White*, **Hadoop: The Definitive Guide**, 4th Edition, O’Reilly Media, **ISBN-13**: 978-1491901632
{: .notice--warning}

Depending on your background, a standard database textbook may be useful:

>*Elmasri* and *Navathe*. **Fundamentals of Database Systems**, 6th Edition, Addison-Wesley, 2003
{: .notice--info}

>*Ramakrishnan* and *Gehrke*. **Database Management Systems**, 3nd Edition, McGraw-Hill, 2002
{: .notice--info}

>*Silberschatz*, *Korth*, and *Sudarshan*. **Database System Concepts**, 6th Edition, McGraw Hill, 2010
{: .notice--info}

>*Garcia-Molina*, *Ullman*, and *Widom*. **Database Systems: The Complete Book**, 2nd Edition, Prentice Hall, 2008
{: .notice--info}

# Workload and Grading Scheme

**Grading Policy:**

{% for w in site.data.course.workload %}* {% if w.link %}[{{ w.name }}]({{ site.baseurl }}/{{ w.link }}){% else %}{{ w.name }}{% endif %}: *{{ w.percentage }}%*
{% endfor %}

**Grading scheme:**

{% for g in site.data.course.grading %}* {% if g.plus %}{{ g.plus }}+{% else %}<{{ g.lessthan }}{% endif %} = {{ g.letter }}
{% endfor %}


# Syllabus

<a href="{{ site.data.course.syllabus  }}"><i class="far fa-file-pdf"></i> Syllabus</a>
