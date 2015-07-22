# ApbShuttleApi

This API helps developers easy get APB Shuttle info.

Details document: [http://apb-shuttle.info/api/doc](http://apb-shuttle.info/api/doc)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apb_shuttle_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install apb_shuttle_api

## Usage

* 最新車表 - Now
* 下一班車表 - Next
* 全部車表 - All
* 其他資訊 - Info

```ruby
require 'apb_shuttle_api'
```

### 最新車表 - Now
```ruby
ApbShuttleApi.now
```

### 下一班車表 - Next
```ruby
ApbShuttleApi.next(1) # next 1
ApbShuttleApi.next(5) # next 5
```

### 全部車表 - All
```ruby
ApbShuttleApi.all
ApbShuttleApi.all(1)  # limit = 1
```

#### 全部車表 - All APB
```ruby
ApbShuttleApi.all_apb
ApbShuttleApi.all_apb(1)  # limit = 1
```

#### 全部車表 - All Orange (亞通客運)
```ruby
ApbShuttleApi.all_orange
ApbShuttleApi.all_orange(1)  # limit = 1
```

### 其他資訊 - Info
```ruby
ApbShuttleApi.info
```
---

## Copyright / License
* Copyright (c) 2015 jiunjiun (quietmes At gmail.com)
* Licensed under [MIT](https://github.com/jiunjiun/apb-shuttle/blob/master/LICENSE) licenses.
