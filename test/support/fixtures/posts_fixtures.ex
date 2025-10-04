defmodule Corq.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Corq.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        title: "some title"
      })
      |> Corq.Posts.create_post()

    post
  end
end
