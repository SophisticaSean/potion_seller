defmodule ExUnit.Hooks do
  defmacro __using__(_) do
    quote do
      @behaviour ExUnit.Hooks.Behaviour

      @impl ExUnit.Hooks.Behaviour
      def setup_started(test_info, context) do
        :ok
      end

      @impl ExUnit.Hooks.Behaviour
      def setup_finished(test_info, context) do
        :ok
      end

      @impl ExUnit.Hooks.Behaviour
      def test_started(test_info, context) do
        :ok
      end

      @impl ExUnit.Hooks.Behaviour
      def test_finished(test_info, context) do
        :ok
      end

      @impl ExUnit.Hooks.Behaviour
      def suite_started(tests_in_suite_info, context) do
        :ok
      end

      @impl ExUnit.Hooks.Behaviour
      def suite_finished(tests_in_suite_info, context) do
        :ok
      end

      defoverridable [setup_started: 2, setup_finished: 2, test_started: 2, test_finished: 2, suite_started: 2, suite_finished: 2]
    end
  end
end
