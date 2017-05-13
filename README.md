# Not Nil Challenge

![Swift 3.1](https://img.shields.io/badge/Swift-3.1-orange.svg)
[![Build Status](https://travis-ci.org/albinekcom/NotNilChallenge.svg?branch=master)](https://travis-ci.org/albinekcom/NotNilChallenge)

`if let _ = value` or `if value != nil`? Comparing performance of `not nil` syntax variations.


## Usage

1. Clone this repository
2. Run `swift test` and compare the results

> Modify `attempts` parameter in `NotNilChallengeTests` class to check performance for more / fewer runs.


## Test Environment

- Device: MacBook Pro (15-inch, Mid 2015, 2.2GHz Intel Core i7, 16 GB RAM)
- OS: macOS Sierra 10.12.4
- Swift: 3.1
- Attempts: 10,000,000

## Test Results

| Variant            | Duration  |
|--------------------|-----------|
| `if let _ = value` | 0.046 sec |
| `if value != nil`  | 0.754 sec |


## Conclusion

`if let _ = value` is about 16x faster than `if value != nil`.
