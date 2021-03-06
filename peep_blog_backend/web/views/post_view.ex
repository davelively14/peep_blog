defmodule PeepBlogBackend.PostView do
  use PeepBlogBackend.Web, :view

  def render("index.json", %{poststs: poststs}) do
    %{data: render_many(poststs, PeepBlogBackend.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, PeepBlogBackend.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      body: post.body}
  end
end
