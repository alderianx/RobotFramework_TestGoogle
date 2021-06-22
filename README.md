# RobotFramework TestGoogle
CONTEÚDO PROGRAMÁTICO (DESAFIO) PROGRAMADOR DE SISTEMAS DA INFORMAÇÃO (TESTES)


## 🐱‍🏍 Caso de teste com robot framework

Utilizando o Robot Framework com as bibliotecas do Selenium para automatização de testes


### 📋 Pré-requisitos

Baixar o chromedriver relacionado com a mesma versão do navegador!

Baixar a linguagem de programação Python mais recente!

Baixar/clonar o repositório 'RobotFramework_TestGoogle'

Baixe a IDE vs code

### 🔧 Instalação

Instale a versão mais recente do Python
Após configurar as variáveis de ambiente relacionadas ao Python
Abra algum prompt de comando e via 'pip' instale:
Robot Framework (pip install robotframework)  
SeleniumLibrary (pip install --upgrade robotframework-seleniumlibrary)
Requests HTTP client (pip install --upgrade robotframework-requests)

## ⚙️ Executando os testes
Abra os arquivos do repositório pela IDE baixada 
Para executar o caso de teste desenvolvido, basta abrir um terminal/prompt e digitar (robot .\Teste.robot)
Como o script de teste 'Teste.robot' está na raiz do diretório só é preciso passar o nome do arquivo que irá ser executado.

### 🔩 Análise do teste
No arquivo 'Teste.robot' foram inseridos algumas configurações juntamente com o caso de teste principal


 Apontar para o arquivo 'ResourceTeste.robot'
 Abrir o navegador apontado pelo webdriver 'chromedriver' 


***Test Cases***
Caso de Teste 01: Pesquisar no Google
   - Abra o navegador
   - Realize uma busca pelas palavras-chave "robot framework"
   - Cheque se a busca retornou resultados
   - Acesse o terceiro resultado
   - Verifique se é mostrada a página esperada
   - Feche o navegador
    
No arquivo 'ResourceTeste.robot' foram inseridos: bibliotecas utilizadas, variáveis globais, keywords relacionadas com o caso de teste do arquivo 'Teste.robot'

Library      --->      'SeleniumLibrary'  
${BROWSER}   --->      'Chrome'
${URL}       --->      'http://google.com.br'


##### Executando os casos de teste passo a passo #####
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

## 🛠️ Construído com

* [VS Code](https://code.visualstudio.com/) - IDE utilizada
* [Robot Framework](https://robotframework.org/) - Framework utilizado
* [Python](https://www.python.org/) - Linguagem de programação


## 📌 Versão

Utilizada a versão do Google Chrome 
Versão 91.0.4472.114 (Versão oficial) 64 bits


<svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Robot Framework</title><path d="M4.9565 10.2246c0-1.8766 1.5257-3.4023 3.4-3.4023 1.8766 0 3.4024 1.5257 3.4024 3.4023 0 .6838-.5526 1.2364-1.2341 1.2364-.6818 0-1.2344-.5526-1.2344-1.2364 0-.513-.4185-.9296-.9338-.9296-.5129 0-.9317.4165-.9317.9296 0 .6838-.5523 1.2364-1.234 1.2364-.6818 0-1.2344-.5526-1.2344-1.2364m14.0868 5.717c0 .6842-.5524 1.2363-1.2341 1.2363H6.3575c-.6818 0-1.2344-.552-1.2344-1.2363 0-.6837.5526-1.2363 1.2344-1.2363h11.4517c.6817 0 1.234.5526 1.234 1.2363m-5.351-5.0244c-.3814-.5657-.2323-1.3328.3334-1.7143l2.8628-1.9334c.5613-.3902 1.3329-.2324 1.7144.3289.3815.5654.2323 1.3329-.3334 1.7144l-2.8628 1.9333c-.5442.3831-1.3348.2379-1.7144-.3289zm7.8393 7.6018a.8815.8815 0 0 1-.258.6227l-2.1277 2.1277a.8822.8822 0 0 1-.623.258H5.4772a.8822.8822 0 0 1-.623-.258l-2.1277-2.1277a.8815.8815 0 0 1-.258-.6227V5.4818a.8797.8797 0 0 1 .258-.6228l2.1277-2.1282a.8816.8816 0 0 1 .623-.2578h13.0456a.8816.8816 0 0 1 .623.2578l2.1277 2.1282a.8797.8797 0 0 1 .258.6228V18.519zm1.811-15.0835L20.5644.6577A2.2454 2.2454 0 0 0 18.9775 0H5.0207A2.2445 2.2445 0 0 0 3.433.658L.657 3.4359A2.2449 2.2449 0 0 0 0 5.0228v13.9547c0 .5953.2366 1.1667.6575 1.5872l2.778 2.7779c.421.421.9918.6573 1.5871.6573h13.9548a2.2448 2.2448 0 0 0 1.5872-.6573l2.7779-2.7779A2.2436 2.2436 0 0 0 24 18.9775V5.023a2.2451 2.2451 0 0 0-.6575-1.5875z"/></svg> por [Alderian Gomes](https://github.com/alderianx)
