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



<% @items.each do |item| %>
    <% item.posts.each do |file| %>
        <% if file.image? %>
            <i class="bi bi-file-earmark-image"></i>
        <% elsif file.audio? %>
            <i class="bi bi-file-earmark-music"></i>
        <% elsif file.video? %>
            <i class="bi bi-file-earmark-play"></i>
        <% else %>
            <i class="bi bi-file-earmark"></i>
        <% end %>
        <%= link_to file.filename, [item.repo, item], class:"text-decoration-custom-color" %>
    <% end %>
<% end %>