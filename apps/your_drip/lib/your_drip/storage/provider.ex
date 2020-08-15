defmodule YourDrip.Storage.Provider do
  @moduledoc false

  @target Application.get_env(:your_drip, :storage_provider)

  defdelegate upload(path, content), to: @target
  defdelegate download(path), to: @target
end
