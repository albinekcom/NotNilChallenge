# Not Nil Challenge

Comparing performance of `not nil` syntax variations.


## Usage

1. Clone this repository
2. Open directory with cloned repository in `Terminal`
3. Execute command `swift test`
4. Compare the results
5. BONUS: Modify `attempts` parameter in `NotNilChallengeTests` class to check performance for longer / shorter runs


## Results
```
Test device: MacBook Pro (Retina, 15-inch, Mid 2015, 2,2 GHz Intel Core i7, 16 GB RAM)
OS: macOS Sierra 10.12.4
Swift: 3.1
Attempts: 10_000_000
```

```
if let _ = value - 0.046 sec
if value != nil - 0.754 sec
```


## Conclusion

`if let _ = value` is much faster than `if value != nil`
