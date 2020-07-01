from PageObjectLibrary import PageObject


class contasPedidos(PageObject):

    _locators = {
        #### MODAL SAIR ####
        "modal_sair_button": "id=primary-modal-button",
       

        #### CONTAS E PEDIDOS ####
        "menu_conta_pedidos_link": "class=css-6e10nj-textBase-account",
        "contas_pedidos_sair_button": "id=logout-button",
    }

    def click_contas_pedidos_link(self):
        """Clicar no menu Contas e Pedidos"""
        self.selib.wait_until_element_is_visible(self.locator.menu_conta_pedidos_link)
        self.selib.click_link(self.locator.menu_conta_pedidos_link)
    
    def click_contas_pedidos_sair(self):
        """Clicar na opção Sair"""
        self.selib.wait_until_element_is_visible(self.locator.contas_pedidos_sair_button)
        self.selib.click_element(self.locator.contas_pedidos_sair_button)
    
    def click_modal_sair(self):
        """Clicar no botão Sim, quero sair do modal"""
        self.selib.wait_until_element_is_visible(self.locator.modal_sair_button)
        self.selib.click_button(self.locator.modal_sair_button)