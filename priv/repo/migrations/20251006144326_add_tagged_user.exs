defmodule Corq.Repo.Migrations.AddTaggedUser do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add :tagged_user_id, references(:users, on_delete: :nothing)

    end

  end
end
