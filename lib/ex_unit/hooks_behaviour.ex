defmodule ExUnit.Hooks.Behaviour do
  @callback setup_started(test_info :: ExUnit.Case.t(), test_context :: map()) :: :ok
  @callback setup_finished(test_info :: ExUnit.Case.t(), test_context :: map()) :: :ok
  @callback test_started(test_info :: ExUnit.Case.t(), test_context :: map()) :: :ok
  @callback test_finished(test_info :: ExUnit.Case.t(), test_context :: map()) :: :ok
  @callback suite_started(test_info :: ExUnit.Case.t(), test_context :: map()) :: :ok
  @callback suite_finished(test_info :: ExUnit.Case.t(), test_context :: map()) :: :ok
end
