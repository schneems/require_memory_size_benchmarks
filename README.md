## Require Memory Size Benchmarks

The goal of this library is to load many objects into memory (1869 objects) with the least ammount of RAM use. This is a benchmark for real world use case in mime-types gem.

## Install

```
$ bundle install
```

## Run

```
$ ruby bench.rb
MEM Difference, multiple (10) files: 5.9765625 mb
MEM Difference, single file: 13.72265625 mb
MEM Difference, load json: 2.69140625 mb
```

This `bench.rb` script will execute three different benchmarks using different processes. Each loads data in a different method. All the data loaded __should__ be the same.

All memory measured is RSS.

