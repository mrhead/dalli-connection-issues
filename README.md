## Easily reproducible steps for https://github.com/petergoldstein/dalli/issues/633

### Files

- `memcached.rb` dummy memcached server which responds to version request but ignores everything else
- `test.rb` test which reproduces indefinite connection retries

### How to reproduce the issue

```
bundle install
ruby memcached.rb
ruby test.rb # from another console seesion
```
