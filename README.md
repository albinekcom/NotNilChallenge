# Not Nil Challenge

![Swift 4](https://img.shields.io/badge/Swift-4-orange.svg)
[![Build Status](https://travis-ci.org/albinekcom/NotNilChallenge.svg?branch=master)](https://travis-ci.org/albinekcom/NotNilChallenge)

`if let _ = value` or `if value != nil`? Comparing performance of `not nil` syntax variations.


## Usage

Run the command below and compare the results.

```bash
$ swift test
```

> Modify `attempts` property in `NotNilChallengeTests` class to check performance for more / fewer runs.


## Test Environment

- Device: MacBook Pro (15-inch, Mid 2015, 2.2GHz Intel Core i7, 16GB RAM)
- OS: macOS Sierra 10.13
- Swift: 4.0.2
- Attempts: 10,000,000


## Test Results

| Variant            | Duration  |
|--------------------|-----------|
| `if let _ = value` | 0.046 sec |
| `if value != nil`  | 0.754 sec |


## Conclusions

`if let _ = value` is about **16x faster** than `if value != nil`.
