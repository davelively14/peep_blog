defmodule PeepBlogBackend.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:poststs) do
      add :title, :string
      add :body, :text

      timestamps
    end

  end
end
