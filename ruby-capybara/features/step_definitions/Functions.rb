
    def google_search
      visit 'http://www.google.com'
      page.has_button?("Google Search")
    end

    def with_scope(locator)
    locator ? within(locator) { yield } : yield
    end


