:Title: Sparse de Bruijn Graph Labeling for Assembly Graphs
	Notes and Outline
:Author: Camille Scott
:Date: 2014-02-19

Outline Notes
-------------

@CTB: The typical organization for a paper is, Introduction; Methods and Results; Discussion; Conclusion.
(These can go in different order, e.g. Intro, Results, Discussion, Conclusion, Methods.)  Methods and Results
are the most important for writing a paper at this early stage.  I think you've filled out the rest adequately.

Could you put this into that framework?

I'd be particularly interested in hearing descriptions of the 2-4 figures/tables that you would use.

Abstract
--------

Current algorithms for short-read assembly rely on de Bruijn graphs to store all k-mers from a set of reads. This method is preferred for its constant-time querying, removal of redundancy, avoidance of all-by-all alignment as in overlap-lay-consensus models, and relative simplicity of information. However, de Bruijn graphs suffer from loss of source information; that is, they do not encode which sequence or sequences a particular k-mer originated in. This information can be leveraged for a variety of analysis and processing tasks.  We introduce a method for sparsely tagging a de Bruijn graph and associating labels with these tags, which we argue represent a sufficient approximation of local k-mer origin. This method is implemented in the khmer suite, with associated tools packaged in the python library peasoup [link to both].

Introduction
------------

* Overview classic NGS stuffs
* Overview de Bruijn graphs

    - reason for use (reduced comp. complexity, etc)
    - pitfalls (memory usage, error, etc)
* Need for faster ways to analyse large assembly graphs
* Partitioning
* Introduce as method for analysis, partitioning

Methods and Results
-------------------

Algorithm
+++++++++

* brief description of khmer, probalistic de bruijn graphs (cite pell? diginorm? minia?)
* describe sparse tagging (cite pell)
* describe labeling implementation (cite "colored" de bruijn graphs in cortex)

Practical Results
+++++++++++++++++

* read retrieval
 
    - **figure**: table for abundance estimation -- show on lamprey, ecoli, simulation
	for comparison to non-swept, subset dataset for tractilbility
    - **figure**: table to compare stats of assemly versus read swept assembly (for correctness)?
	less sure on this one, but seems important
 
* graph connectivity analysis

    - **figure**: connectivity heatmap
	it's cool and flashy, but still need to explore repartitioning implications, otherwise worthless.
	perhaps leave this for a different time?


Benchmarking
++++++++++++

* formalize memory usage
    (#kmers / tagging distance) * size(long long)

* formalize complexity
    - constant time insert
    - query time equal to map (logn?)

* benchmarks on memory and time for ecoli, simulated, larger eukaryotic (probably lamprey)

* benchmarks on massively parallel abundance estimation

Discussion
----------

* advantages and disadvantages versus string graph / fm-index
* scalability concerns (label sizes, query optimizations)
* pitfalls for read retrieval abundance est (example, seed=k)

Conclusion (and Future Work?)
-----------------------------

* short and long-read combination for traversal
* retrieving reads using assembly -- for parallelization of alignment, abundance est, etc
* fast analysis of assembly graph connectivity
* fast estimation of graph similarity
* alignment optization and parallelization

TODO
----

* The pipeline for assembly, sweep, abundance est needs to be finalized and tested start to finish
* Pipeline needs to be run on smaller ecoli and simulated data sets
* Benchmarking, especially on datasets of varying graph complexity


