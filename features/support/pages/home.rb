class Home
  include PageObject

  def home
    browser.goto($base_url)
  end

  def title
    browser.title
  end

  def products_list_on_display?
    browser.link(text: 'Supercard has arrived!').exist? &&
    browser.link(text: 'Buy currency').exist? &&
    browser.link(text: 'Exchange rate updates').exist? &&
    browser.link(text: 'Luxury for less').exist?
  end

  def resize_width(resize)
    current_height = browser.driver.manage.window.size.height
    browser.driver.manage.window.resize_to(resize, current_height)
  end

  def links_with_width_resized?
    browser.div(class: 'slick-list draggable').exist?
  end

  def slide_through
    browser.button(text: '1').when_present.click
    browser.button(text: '2').when_present.click
    browser.button(text: '3').when_present.click
  end

  def landed_on_screen(screen_number)
    browser.li(class: 'slick-active').text.include?(screen_number)
  end

end