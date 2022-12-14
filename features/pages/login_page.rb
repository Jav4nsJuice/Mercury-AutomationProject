class LoginPage
    include PageObject

    text_field(:username_box, name: 'userName')
    text_field(:password_box, name: 'password')
    button(:submit_button, value: "Submit")
   
    def visit_mercury_login_site
      @browser.goto 'https://demo.guru99.com/test/newtours/login.php'
    end
   
    def enter_username(username_keyword)
      self.username_box = username_keyword
    end

    def enter_password(password_keyword)
        self.password_box = password_keyword
      end
   
    def click_submit_button
        submit_button
    end
   
    def login_successful_present?(message)
        @browser.text.include?(message)
    end
   
    def close
        @browser.close
    end
  end

  