#language: pt

Funcionalidade: Listas dos quiz disponiveis

    Contexto:
        Dado direcionamento para o quiz
        E direcionar para listas

    @listas #Teste será rejeitado, mas é o aceite para ser valido.
    Cenário: Avaliar escrita de listas
        Então os nomes no menu devem ser listas

    @quiz_personalidade
    Cenário: Navegação para quiz de personalidade
        Quando ir para quiz de personalidade 
        Então deve listar os quiz de personalidade