::::

::::{dropdown} Mark Token Pruning for Sparse Vector as GA
Token pruning for sparse_vector queries has been live since 8.13 as tech preview.
As of 8.19.0 and 9.1.0, this is now generally available.
::::

::::{dropdown} Upgrade to lucene 10.2.2
* Reduce NeighborArray on-heap memory during HNSW graph building
* Fix IndexSortSortedNumericDocValuesRangeQuery for integer sorting
* ValueSource.fromDoubleValuesSource(dvs).getSortField() would throw errors when used if the DoubleValuesSource needed scores

::::

::::{dropdown} Release FORK in tech preview
Fork is a foundational building block that allows multiple branches of execution.
Conceptually, fork is:
- a bifurcation of the stream, with all data going to each fork branch, followed by
- a merge of the branches, enhanced with a discriminator column called FORK:

Example:

```yaml
FROM test
| FORK
( WHERE content:"fox" )
( WHERE content:"dog" )
| SORT _fork
```

The FORK command add a discriminator column called `_fork`:

```yaml
| id  | content   | _fork |
|-----|-----------|-------|
| 3   | brown fox | fork1 |
| 4   | white dog | fork2 |
```

::::

::::{dropdown} ES|QL cross-cluster querying is now generally available
The ES|QL Cross-Cluster querying feature has been in technical preview since 8.13.
As of releases 8.19.0 and 9.1.0 this is now generally available.
This feature allows you to run ES|QL queries across multiple clusters.
::::
