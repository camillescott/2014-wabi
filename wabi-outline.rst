:Title: Sparse de Bruijn Graph Labeling for Assembly Graphs
:Author: Camille Scott
:Date: 2014-02-19

Abstract
--------

Current algorithms for short-read assembly rely on de Bruijn graphs to store all k-mers from a set of reads. This method is preferred for its constant-time querying, removal of redundancy, avoidance of all-by-all alignment as in overlap-lay-consensus models, and relative simplicity of information. However, de Bruijn graphs suffer from loss of source information; that is, they do not encode which sequence or sequences a particular k-mer originated in. This information is highly useful for both graph querying and traversing ambiguous regions due to error or repeats. We introduce a method for sparsely tagging a de Bruijn graph and associating  
Outline
-------


