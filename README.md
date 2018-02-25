# RuboCop SCC

This repository provides recommended RuboCop configuration and additional Cops for use on Sequoia Capital China Ruby projects. Forked from [github/rubocop-github](https://github.com/github/rubocop-github).

## Installation

**Gemfile**

``` ruby
gem "rubocop-scc", github: "sequoia-china/rubocop-scc"
```

**.rubocop.yml**

``` yaml
inherit_gem:
  rubocop-github:
    - config/default.yml
    - config/rails.yml
```

## The Cops

All cops are located under [`lib/rubocop/cop/sequoiacap`](lib/rubocop/cop/sequoiacap), and contain examples/documentation.

> (c) 2018 Sequoia Capital.


