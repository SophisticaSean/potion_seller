# Potion Seller
  This repo is a drop-in replacement for ExUnit that comes prepackaged in Elixir standard library. I'm not sure how long it'd take to get these changes merged upstream into Elixir core so I decided to fork ExUnit here and add all the necessary changes.

## Focus
  ExUnit can't support accurate test tracing because it doesn't have a very robust hook system.
  - `on_exit` calls are called from a different process (traces don't like that)
  - Event subscriptions (test_finished, suite_started, etc) are sent via GenServer.cast which is asynchronous and happens over process boundaries both of which tracing doesn't like.
  - Vanilla ExUnit doesn't provide any metadata on default return of the test case that tell you if the test case failed or not.

## TODO
  [] add alternative and more robust synchronous hook system similar to rspec and cucumber
