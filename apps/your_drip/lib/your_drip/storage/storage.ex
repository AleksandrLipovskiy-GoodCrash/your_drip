defmodule YourDrip.Storage do
  alias YourDrip.Storage.Media
  alias YourDrip.Storage.Provider

  def store(%Media{} = media, content) do
    media
    |> generate_storage_key()
    |> Map.get(:storage_key)
    |> Provider.upload(content)
  end

  def retrieve(%Media{storage_key: storage_key}) do
    Provider.download(storage_key)
  end

  defp generate_storage_key(%Media{id: id} = media) do
    %{media | storage_key: id <> "_" <> Utils.generate_timestamp()}
  end
end
