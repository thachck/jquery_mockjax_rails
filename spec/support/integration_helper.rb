def wait_until
  Timeout.timeout(Capybara.default_wait_time) do
    sleep(0.1) until yield == true
  end
end