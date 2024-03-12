Feature: Hacer una guia

    Scenario: anyadir guias
        Given call read ('login.feature@login_a')
        And click('a.navbar-brand')
        Then waitForUrl()
        And click('.guias a:first-child')
        Then waitForUrlMatching('.*/guia/\\d+$')  
    
    Scenario: Consultar guías con parámetros
        Given call read ('login.feature@login_a')
        And driver baseUrl + '/user/2'
        And driver baseUrl + '/guias'
        And setQueryParam('campeon', 'j')
        And setQueryParam('posiciones', 'bot')
        And setQueryParam('etiquetas', 'campeon')
        And setQueryParam('orderBy', 'puntuacion+DESC')
        And click('.submit-button')
        Then waitForUrlMatching('.*/guias.*')

        And assertTextPresent('Resultados de la búsqueda para campeón: Ezreal')
        And assertTextPresent('Resultados de la búsqueda para posiciones: ADC')
        And assertTextPresent('Resultados de la búsqueda para etiquetas: guía')
        And assertTextPresent('Ordenados por: nombre')