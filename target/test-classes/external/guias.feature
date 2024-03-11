Feature: Hacer una guia

Backgroung:
* call read ('login.feature@login_b')
* waitForUrl(baseUrl + '/user/2')

@anyadirGuia
Scenario: anyadir guias
    when driver '/guias' 
    then waitForUrl(baseUrl + '/guias')