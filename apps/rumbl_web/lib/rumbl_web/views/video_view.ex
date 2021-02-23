defmodule RumblWeb.VideoView do
  use RumblWeb, :view

  def category_select_options() do
    for category <- categories(), do: {category.name, category.id}
  end

  def categories do
    Rumbl.Multimedia.Category
    |> Rumbl.Multimedia.Category.alphabetical()
    |> Rumbl.Repo.all()
  end
end
