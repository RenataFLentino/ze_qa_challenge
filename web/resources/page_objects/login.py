from PageObjectLibrary import PageObject


class login(PageObject):

    _locators = {
        #### MODAL IDADE ####
        "clicar_sim_button": "id=age-gate-button-yes",

        #### LOGIN ####
        "entrar_button": "id=welcome-button-sign-in",
        "entrar_com_email_button": "id=login-home-email-button-sign-in",
        "email_input": "id=login-mail-input-email",
        "senha_input": "id=login-mail-input-password",
        "entrar_login_button": "id=login-mail-button-sign-in",
    }

    def click_age_gate_button_yes(self):
        """Clicar no botão Sim do modal"""
        self.selib.wait_until_element_is_visible(self.locator.clicar_sim_button)
        self.selib.click_button(self.locator.clicar_sim_button)

    def click_enter_button(self):
        """Clicar no botão Entrar"""
        self.selib.wait_until_element_is_not_visible(self.locator.clicar_sim_button)
        self.selib.wait_until_element_is_visible(self.locator.entrar_button)
        self.selib.click_button(self.locator.entrar_button)

    def click_enter_create_email(self):
        """Clicar no botão Entrar Com E-mail"""
        self.selib.wait_until_element_is_visible(self.locator.entrar_com_email_button)
        self.selib.click_button(self.locator.entrar_com_email_button)

    def enter_email(self, e_mail):
        """Inserir e-mail"""
        self.selib.wait_until_element_is_visible(self.locator.email_input)
        self.selib.input_text(self.locator.email_input, e_mail)

    def enter_password(self, password):
        """Inserir senha"""
        self.selib.wait_until_element_is_visible(self.locator.senha_input)
        self.selib.input_text(self.locator.senha_input, password)

    def click_login_enter_button(self):
        """Clicar no botão Entrar"""
        self.selib.wait_until_element_is_visible(self.locator.entrar_login_button)
        self.selib.click_button(self.locator.entrar_login_button)

