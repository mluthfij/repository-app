# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<nav class="navbar navbar-expand-lg <%= cookies[:moon] ? "navbar-dark bg-dark" : "nav-bg" %>">
  <div class="container-fluid">
    <div class="d-flex">
      <button class="btn me-2" id="sidebarToggle">
        <span class="navbar-toggler-icon"></span>
      </button>
      <%= link_to "MyRepo", root_path, class:"navbar-brand" %>
    </div>
    <div class="d-flex">
      <%#  %>
      <span class="d-xl-none d-lg-none d-xl-block">
      <div class="dropdown">
        <button class="btn" type="button" data-bs-toggle="dropdown" aria-expanded="false">
          <i class="bi bi-search"></i>
        </button>
        <div class="dropdown-menu dropdown-menu-end p-4 text-muted" style="max-width: 500px;">
          <%= form_tag search_path, method: :get do |f| %>
            <div class="input-group">
              <%= text_field_tag :q, params[:q], class:"form-control", placeholder:"Search here..." %>
              <%= button_tag "", class:"btn btn-success bi bi-search" %>
            </div>
          <% end %>
        </div>
      </div>
      </span>
      <%#  %>
      <span class="d-xl-none d-lg-none d-xl-block">
        <%= render "layouts/components/dropdown_navbar" %>
      </span>
      <button class="btn ms-2 d-xl-none d-lg-none d-xl-block" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <%= link_to "Home", root_path, class:"nav-link" %>
        </li>
        <li class="nav-item">
          <%= link_to "Repositories", repos_path, class:"nav-link" %>
        </li>
      </ul>
      <span class="d-flex">
        <%= form_tag search_path, method: :get do |f| %>
          <div class="input-group">
            <%= text_field_tag :q, params[:q], class:"form-control", placeholder:"Search here..." %>
            <%= button_tag "", class:"btn btn-success bi bi-search" %>
          </div>
        <% end %>
      </span>
    </div>
    <div class="d-flex d-md-none d-lg-block d-sm-none d-md-block d-none d-sm-block">
      <%= render "layouts/components/dropdown_navbar" %>
    </div>
  </div>
</nav>
