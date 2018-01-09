defmodule VelcronWeb.ErrorViewTest do
  use VelcronWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 404.html" do
    assert render_to_string(VelcronWeb.ErrorView, "404.html", []) ==
           "Page not found"
  end

  test "render 500.html" do
    assert render_to_string(VelcronWeb.ErrorView, "500.html", []) ==
           "Internal server error"
  end

  test "render any other" do
    assert render_to_string(VelcronWeb.ErrorView, "505.html", []) ==
           "Internal server error"
  end
end
