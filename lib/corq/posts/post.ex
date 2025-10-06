defmodule Corq.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :title, :string
    belongs_to :user, Corq.Accounts.User
    belongs_to :tagged_user, Corq.Accounts.User

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:body, :title, :user_id, :tagged_user_id])
    |> validate_required([:body, :title, :user_id])
  end
end
