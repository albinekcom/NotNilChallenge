# Not Nil Challenge

![Swift 5.3](https://img.shields.io/badge/Swift-5.3-orange.svg)
[![Build Status](https://travis-ci.com/albinekcom/NotNilChallenge.svg?branch=master)](https://travis-ci.com/albinekcom/NotNilChallenge)

`if let _ = value` or `if value != nil`? Comparing performance of `not nil` syntax variations.


## Usage

Run the command below and compare the results.

```bash
$ swift test
```

> Modify `attempts` property in `NotNilChallengeTests` class to check performance for more / fewer runs.


## Test Environment

- Device: MacBook Pro (15-inch, Mid 2015, 2.2GHz Intel Core i7, 16GB RAM)
- OS: macOS High Sierra 10.13.3
- Swift: 4.1.2
- Attempts: 10,000,000


## Test Results

| Variant            | Average duration |
|--------------------|------------------|
| `if let _ = value` | 0.165 sec        |
| `if value != nil`  | 0.184 sec        |


## Conclusions

`if let _ = value` is about **12%** faster than `if value != nil`.
