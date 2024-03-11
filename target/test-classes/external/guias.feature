Feature: Hacer una guia

    Scenario: anyadir guias
        Given call read ('login.feature@login_a')
        And driver baseUrl + '/user/2'
        And driver baseUrl + '/guias' 
        And click('.guias a:first-child')
        Then waitForUrlMatching('.*/guia/\\d+$')  
    
    Scenario: Consultar guías con parámetros
        Given call read ('login.feature@login_a')
        And driver baseUrl + '/user/2'
        And driver baseUrl + '/guias'
        And setQueryParam('campeon', 'Ezreal')
        And setQueryParam('posiciones', 'ADC')
        And setQueryParam('etiquetas', 'guía')
        And setQueryParam('orderBy', 'nombre')
        And click('.submit-button')
        Then waitForUrlMatching('.*/guias.*')

        # Puedes agregar más assertions aquí según tus necesidades
        And assertTextPresent('Resultados de la búsqueda para campeón: Ezreal')
        And assertTextPresent('Resultados de la búsqueda para posiciones: ADC')
        And assertTextPresent('Resultados de la búsqueda para etiquetas: guía')
        And assertTextPresent('Ordenados por: nombre')