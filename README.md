# This is just a minimal repository for phoenix timeout issue
# Issue
If the API endpoint process the request for more than 60 seconds, phoenix server times out.
# Demo

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

# Solution

You can change http config in config.exs/dev.exs as below to set the timeout.

```http: [port: 4001, protocol_options: [idle_timeout: 70_000]]``` 
```http: [port: 4001, protocol_options: [idle_timeout: :infinity]]```
