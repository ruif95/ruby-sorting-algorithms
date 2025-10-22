# Ruby - Sorting Algorithms

## Execution

To run tests:
```shell
rspec
```

To run test execution task:
```shell
bundle exec rake
```

To benchmark all sorts against each other:
```shell
bundle exec rake benchmark
```

## Description

This repository serves two purposes:
- Get familiar with Ruby;
- Practice Sorting algorithms.

### Algos

The idea is to *at least* implement:
- [ ] Heap Sort
- [X] Bubble Sort
- [ ] Merge Sort
- [ ] Quick Sort
- [X] Selection Sort
- [X] Insertion Sort

### Ruby Structure

The idea is to implement a generic Ruby repo structure, with `lib/` for code, `spec/` for RSpec tests, and other generic ruby files, as well as creating a generic CI workflow to execute the tests through Rake.
