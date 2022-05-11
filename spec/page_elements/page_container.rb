require 'helper'

class HomePage
  
  def initialize(browser)
    @browser = browser
  end

  def demo
    @browser.goto('http://automationpractice.com/index.php')
  end

  def methods
    return Objects.new(@browser)
  end

  def registration
    return RegObjects.new(@browser)
  end

  def filters
    return FilterObjects.new(@browser)
  end

end