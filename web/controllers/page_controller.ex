defmodule TalentApp.PageController do
  use TalentApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
