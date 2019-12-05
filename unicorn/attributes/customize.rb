<%% if ENV["UNICORN_WORKERS"].present? %>
    normal[:unicorn][:worker_processes] = <%%= ENV['UNICORN_WORKERS'] || 4 %>
<%% end %>