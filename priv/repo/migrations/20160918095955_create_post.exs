defmodule TalentApp.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :text
      add :url, :string
      add :image, :string

      timestamps()
    end

  end
end
