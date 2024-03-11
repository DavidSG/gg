Feature: Hacer una guia

    Scenario: anyadir guias
        Given call read ('login.feature@login_a')
        And driver baseUrl + '/user/2'
        And driver baseUrl + '/guias' 
        And click('.guias a:first-child')
        Then waitForUrlMatching('.*/guia/\\d+$')  