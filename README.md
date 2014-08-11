# IDoneThis

A simple Ruby client for the [iDoneThis API](https://idonethis.com/api/)

## Installation

Add this line to your application's Gemfile:

    gem 'idonethis'

And then execute:

    $ bundle

## Usage

```
client = IDoneThis::Client.new("api_token")
=> #<IDoneThis::Client:0x007fbefba79ab0 @token="...">

teams = client.teams
=> #<HTTParty::Response:... parsed_response={"count"=>1, "next"=>nil, "previous"=>nil, "results"=>[...]>

teams['results'].first['name']
=> "Honeybadger.io"

client.dones(page: 2)['results'].keys
=> ["id", "created", "updated", "markedup_text", "url", "team", "raw_text", "done_date", "team_short_name", "owner", "like_count"]

puts client.done("Used the idonethis gem", "Honeybadger.io")
```

## Contributing

1. Fork it ( http://github.com/stympy/idonethis/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
