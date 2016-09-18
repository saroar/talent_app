defmodule TalentApp.Post do
  use TalentApp.Web, :model

  schema "posts" do
    field :title, :string
    field :body, :string
    field :url, :string
    field :image, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body, :url, :image])
    |> validate_required([:title, :body, :url, :image])
  end
end
