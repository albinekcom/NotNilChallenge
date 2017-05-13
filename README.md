# Not Nil Challenge

`if let _ = value` or `if value != nil`? Comparing performance of `not nil` syntax variations.


## Usage

1. Clone this repository
2. Run `swift test` and compare the results

**BONUS:** Modify `attempts` parameter in `NotNilChallengeTests` class to check performance for longer / shorter runs.


## Test Environment

- MacBook Pro (Retina, 15-inch, Mid 2015, 2,2 GHz Intel Core i7, 16 GB RAM)
- macOS Sierra 10.12.4
- Swift 3.1
- Attempts = 10_000_000

## Test Results

| Variant            | Duration  |
|--------------------|-----------|
| `if let _ = value` | 0.046 sec |
| `if value != nil`  | 0.754 sec |


## Conclusion

`if let _ = value` is much faster than `if value != nil`
