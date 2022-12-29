---
title: Project
permalink: /project.html
classes: wide
---

# Overview

In the project you will extend an existing Big Data system. Concrete project ideas will be posted at the beginning of the course.

## Organization & Dates

The first step will be for you to identify a project you want to work on. Some example project ideas are shown below. However, suggesting your own ideas is encouraged. Once you have selected a project, you should come up with a plan for implementing the project. You should then meet with the instructor to present your approach. The finished project is due at the end of the semester. You should also write a short summary of what you done. The project code will be submitted through github. We will create a repository on github for each student. Furthermore, at the last day of class (**{{ site.data.course.due.project_presentation }}**), we will do short project presentations (5-10 minutes per project).

In summary, the timeline for the project is:

- Select a project: **{{ site.data.course.due.project_selection }}**
- Meet to discuss project design: **{{ site.data.course.due.project_design }}**
- Finish project implementation: **{{ site.data.course.due.project_implementation }}**

Note that both individual projects as well as group projects are possible. However, the expectations for a group project will be set higher.

## Project Presentations

All presentations will be done in a block seminar **{{ site.data.course.due.project_presentation }}**. Presentations will be 10 minutes long followed by a 5 minutes for discussion.

| Group                | Timeslot    | Project                                                                                         |
|----------------------|-------------|-------------------------------------------------------------------------------------------------|
| Patel                | 12:00-12:15 | Updating Data Frames in Spark                                                                   |
| Rizvi                | 12:15-12:30 | Datalog over Spark Data Frames                                                                  |
| Campbell + Tang      | 12:30-12:45 | Implementing Provenance-based Data Skipping on Spark                                            |
| Xie                  | 12:45-1:00  | Secure Joins over Encrypted Databases                                                                                                |
| Waghela + Sharma     | 1:15-1:30   | Implement Optimization Rules for Uncertainty-Annotated Management in Spark's Catalyst Optimizer |
| Singh                | 1:30-1:45   | Implement Optimization Rules for Uncertainty-Annotated Management in Spark's Catalyst Optimizer |
| Cornelius + Mohammed | 1:45-2:00   | Datalog over Spark Data Frames                                                                  |


## Example Project Ideas

As mentioned above, feel free to propose your own project idea. These are just meant as examples to give you an idea of what is expected.

### Histogram-based Zonemaps in Parquet (1-2 students)

The Parquet file format [https://parquet.incubator.apache.org/](https://parquet.incubator.apache.org/) is a columnar storage format that supports light-weight indexes called zome maps ([https://blog.cloudera.com/speeding-up-select-queries-with-parquet-page-indexes/](https://blog.cloudera.com/speeding-up-select-queries-with-parquet-page-indexes/)]. A column's data is decided into chunks and for each chunk the zone map stores the minimum and maximum values occurring in this chunk. Given a filter query, any chunk whose data is incompatible with the condition can be skipped. For instance, for a condition $A > 10$ if the chunk contains only values between $1$ and $5$, then no row in this chunk can fulfill the condition, so we can skip this chunk without reading its data. In this project you will extend the parquet indexing infrastructure to maintain histograms instead of only the minimum and maximum values.

### Extend Spark's DataFrame API to support Datalog (1-3 students)

Datalog is a declarative query language where queries are expressed as logical rules (implications). For example, a query *"Return the names of students registered for CS595"* over tables `Student(Name,GPA,Major)` and `Takes(StudentName,Course)` would written as a datalog rule:

```prolog
Q(X) :- Student(X,Y,Z), Takes(X,cs595).
```

The goal of this project is to implement support for basic Datalog queries in Spark. This can be done by creating datastructures to represent Datalog rules and programs (sets of rules). Then it should be possible to apply a datalog program to a DataFrame. Internally this can be realized by translating the Datalog program into an equivalent query using Spark's Dataframe API (which roughly corresponds to relational algebra).

### Support Spark as a Backend for the GProM Provenance System (1-2 students)

Data provenance is information about how a piece of data was derived from input data. In this project you will extend an existing provenance management system called [GProM](https://github.com/IITDBGroup/gprom) which can translate provenance requests into SQL queries. GProM can run on-top of multiple database systems. In this project you will extend GProM to be able to use Spark as a backend.

### Implement Optimization Rules for Uncertainty-Annotated Management in Spark's Catalyst Optimizer (1-3 students)

[Uncertainty-annotated databases](http://www.cs.iit.edu/~dbgroup/projects/ua-db.html) are a light-weight framework for dealing with uncertainty (e.g., missing values) in data. Uncertainty-annotated databases (UA-DBs) have been implemented on top of Spark. In this project, you will implement domain-specific rewrite rules targeted to improve the performance of UA-DB queries and integrate them with Spark's Catalyst optimizer.

### Add Support for Uncertain Order-aware Queries To Spark (1-2 students)

[Uncertainty-annotated databases](http://www.cs.iit.edu/~dbgroup/projects/ua-db.html) are a light-weight framework for dealing with uncertainty (e.g., missing values) in data which has been implemented on-top of Spark. In this project you will extend this implementation to support new types of queries, specifically queries that order data such as `ORDER BY ... LIMIT`{:.sql} queries and windowed aggregation queries.

### Implement Provenance-based Data Skipping on Spark (1-3 students)

[Provenance-based Data Skipping](http://www.cs.iit.edu/~dbgroup/projects/relevance.html) is a technique that speeds up queries by adding data-dependent filter conditions that filter out data that irrelevant for answering the query. At the core, this approach relies on provenance sketches which encode for a range-partition of the input data which fragments contain relevant data. Deepening on how many students are working on this project you could either just build the filtering mechanism that takes as input the list of ranges from the partitioning that contain provenance and rewrite the query to filter data that does not belong to these ranges or also implement the mechanism for creating such sketches for a query.

### Add limited support for Query Answering With Views to Spark (1-3 students)

Database can exploit materialized views to answer queries more efficiently. This process can be automated by letting the system determine when a view can be used to answer a query (instead of letting the user manually rewrite queries to use views where possible). Spark already supports caching of query results (triggered by the user). In this project this capability will be extended to support storing of materialized views (we need to keep track of which queries correspond to a cached result) and implement a mechanism to detect when an existing view can be used to answer an incoming query. Depending on how many students work on this project this mechanism could be as simple as detecting the a subquery directly corresponds to a view query (this is called physical matching) or could be using more advanced semantic matching techniques.

### Add support for Implementing Updates as Queries to Spark (1-2 students)

Currently, Spark does not support update operations. In this project you will implement support for update operations in Spark's DataFrame API. This could be either implemented by translating the updates into equivalent queries or by implementing physical update operations (more challenging).
