# frozen_string_literal: true

Before do
  @login_page = LoginPage.new
  page.current_window.resize_to(1440, 900)
end

After do
  if @checkout_window.nil?
    temp_shot = page.save_screenshot('log/temp_shot.png')
    screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)
    embed(screenshot, 'image/png', 'screenshot')
  else
    within_window @checkout_window do
      temp_shot = page.save_screenshot('log/temp_shot.png')
      screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)
      embed(screenshot, 'image/png', 'screenshot')  
    end
  end
end

# Before do 
# @login_page.go
# @login_page.with("janethy.oriundi@viajanet.com.br", "Viajanet123!")
# end
