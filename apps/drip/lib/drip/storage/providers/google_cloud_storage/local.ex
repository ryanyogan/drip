defmodule Drip.Storage.Providers.GoogleCloudStorage do
  @behaviour Drip.Behaviours.StorageProvider

  require Logger

  @impl true
  def upload(path, content) do
    Logger.debug("Uploading #{inspect(byte_size(content))} bytes to GCE, path: #{path}")
    {:ok, :uploaded}
  end

  @impl true
  def download(path) do
    Logger.debug("Downloading #{path} from Google Cloud Storage")
    {:ok, "downloaded_content"}
  end
end
