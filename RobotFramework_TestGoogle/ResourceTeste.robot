*** Settings ***
Library              SeleniumLibrary    
***Variables***
${BROWSER}            Chrome
${URL}                http://google.com.br

***Keywords***
Abrir navegador
    Open Browser       ${URL}    ${BROWSER}

Fechar navegador
    Close Browser


##### passo a passo #########
Abra o navegador    
    Title Should Be     Google

Realize uma busca pelas palavras-chave ${"robot framework"}
    Input Text          name=q  ${"robot framework"}
    Press Keys          None   ENTER

Cheque se a busca retornou resultados
    Title Should Be     "robot framework" - Pesquisa Google  
    
Acesse o terceiro resultado

  Click Element  id=rcnt
  Press Keys      None   TAB
  Press Keys      None   TAB
  Press Keys      None   ENTER
        

Verifique se é mostrada a página esperada
    Title Should Be      Robot Framework User Guide

Feche o navegador
    Fechar navegador