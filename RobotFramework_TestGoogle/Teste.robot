*** Settings ***
Resource         ResourceTeste.robot
Test Setup       Abrir navegador
***Test Cases***
Caso de Teste 01: Pesquisar no Google
    Abra o navegador
    Realize uma busca pelas palavras-chave "robot framework"
    Cheque se a busca retornou resultados
    Acesse o terceiro resultado
    Verifique se é mostrada a página esperada
    Feche o navegador


    

