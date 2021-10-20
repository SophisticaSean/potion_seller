# Potion Seller
  This repo is a drop-in replacement for ExUnit that comes prepackaged in Elixir standard library. I'm not sure how long it'd take to get these changes merged upstream into Elixir core so I decided to fork ExUnit here and add all the necessary changes.

## Focus
  ExUnit can't support accurate test tracing because it doesn't have a very robust hook system.
  - `on_exit` calls are called from a different process (traces don't like that)
  - Event subscriptions (test_finished, suite_started, etc) are sent via GenServer.cast which is asynchronous and happens over process boundaries both of which tracing doesn't like.
  - Vanilla ExUnit doesn't provide any metadata on default return of the test case that tell you if the test case failed or not.
  - ExUnit doesn't expose what test it's going to run when its in setup blocks, so if you're trying to trace overall test time it's very difficult to start a top level trace that includes all setup blocks and the test span.

## TODO
  [] add alternative and more robust synchronous hook system similar to rspec and cucumber
  [] protocol/behaviour with default no-op implementations for all callbacks
  [] ability to pass this protocol/behaviour into ExUnit config (currently pass in anon funcs)
  [] figure out way to start trace with test name from the first setup block
  [] figure out way to not overwrite ExUnit and have our own name etc. (or maybe keep it as a drop-in replacement for a bit)
  [] actually return :ok or :passed as the state on a test that succeeded, right now `nil` means both the test hasn't run yet OR that the test has ran and passed. the only time `state` in ExUnit.Test changes is when the test fails currently.
