# Simple Preview Counter

This tiny gem used for counting previrews of model

## Installation

Add this line to your application's Gemfile:

```ruby
gem "simple_preview_counter",  github: "Asp1d/simple_preview_counter"
```

And then execute:

    $ bundle exec rails g simple_preview_counter:install YourModelName


## Usage

Add 
  
    include SimplePreviewCounter

to your model, example:

```ruby
class YourModelName < ActiveRecord::Base
  ...
  include SimplePreviewCounter
  ...

end
```

Then in your controller do

```ruby
def show
   @model.count_preview
   @model.save
end
```

or

```ruby
def show
   @model.count_preview!
end
```

Also you can fake data by passing integer directly to method

```ruby
def show
   @model.count_preview!(9000)
end
```

```ruby
def show
   @model.count_preview(9000)
   @model.save
end
```

You can get actual preview count by calling `preview_count`

```
<%= @model.preview_count %>
```

## Contributing

1. Fork it ( https://github.com/Asp1d/simple_preview_counter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
