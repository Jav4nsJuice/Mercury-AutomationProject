class RegisterPage
    include PageObject
   
    # text_field(:search_box, id: "twotabsearchtextbox")
    # button(:search, value: "Go")
    # div(:search_results, id: "search")

    text_field(:firstName_box, name: 'firstName')
    text_field(:lastName_box, name: 'lastName')
    text_field(:phone_box, name: 'phone')
    text_field(:userName_box, id: "userName")
    text_field(:address_box, name: 'address1')
    text_field(:city_box, name: 'city')
    text_field(:state_box, name: 'state')
    text_field(:postalCode_box, name: 'postalCode')
    text_field(:country_box, name: 'country')
    text_field(:email_box, id: "email")
    text_field(:password_box, name: 'password')
    text_field(:confirmPassword_box, name: 'confirmPassword')
    button(:submit_button, name: 'submit')
   
    def visit_mercury_register_site
      @browser.goto 'https://demo.guru99.com/test/newtours/register.php'
    end
   
    def enter_firstName(firstName_keyword)
        self.firstName_box = firstName_keyword
      end

    def enter_lastName(lastName_keyword)
        self.lastName_box = lastName_keyword
    end

    def enter_phone(phone_keyword)
        self.phone_box = phone_keyword
    end

    def enter_userName(email_keyword)
        self.userName_box = email_keyword
    end

    def enter_address(address_keyword)
      self.address_box = address_keyword
    end

    def enter_city(city_keyword)
        self.city_box = city_keyword
      end

    def enter_state(state_keyword)
        self.state_box = state_keyword
    end

    def enter_postalCode(postalCode_keyword)
        self.postalCode_box = postalCode_keyword
    end

    def enter_country()
        @browser.select_list(name: 'country').click
        @browser.option(value: 'BOLIVIA').click
    end

    def enter_email(email_keyword)
        self.email_box = email_keyword
    end

    def enter_password(password_keyword)
        self.password_box = password_keyword
      end

      def enter_confirmPassword(confirmPassword_keyword)
        self.confirmPassword_box = confirmPassword_keyword
      end
   
    def click_register_button
        submit_button
    end
   
    def login_successful_present?(message)
        @browser.text.include?(message)
    end
   
    def close
        @browser.close
    end
  end