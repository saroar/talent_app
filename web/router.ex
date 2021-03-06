defmodule TalentApp.Router do
  use TalentApp.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TalentApp do
    pipe_through :browser # Use the default browser stack

    get "/", PostController, :index
    resources "/posts", PostController
    resources "/categories", CategoryController
  end

  # Other scopes may use custom stacks.
  # scope "/api", TalentApp do
  #   pipe_through :api
  # end
end
