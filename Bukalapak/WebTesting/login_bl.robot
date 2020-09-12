*** Settings ***
Library                                 Selenium2Library
Suite Setup                             Open My Browser


*** Variables ***
${browser}                              chrome
${url}                                  https://www.bukalapak.com/
${delay}                                30
${menu_login}                           xpath://p[contains(text(),'Login')]
${field_username}                       id:user_session_username
${username}                             machruk.m@gmail.com
${field_pwd}                            id:user_session_password
${pwd}                                  bukaaj4
${btn_login}                            xpath://button[@name='commit']//i
${btn_login_with_google}                xpath://span[contains(text(),'Login dengan Google')]
${email}                                xpath://div[contains(text(),'machruk.m@gmail.com')]

#search
${field_search}                         id:v-omnisearch__input
${product}                              Gitar Akustik Cowboy GW 240 NA
${button_search}                        xpath://div[@id='v-omnisearch']//button//*[local-name()='svg']
${product_selected}                     xpath://body//div//div//div//div//div//div[1]//div[1]//div[1]//div[1]//figure[1]//div[1]//div[1]//a[1]//img[1]

#Filter
${4stars}                               xpath://span[contains(text(),'4 ke atas')]

#add to cart
${btn_add_to_cart}                      xpath://body//div//div//div//div//div//div[1]//div[1]//div[1]//div[3]//div[1]//button[1]//span[1]//div[1]




*** Test Cases ***
Login with Username
    Login with Username

Select Product to add to cart
    Select Product to add to cart





*** Keywords ***

#Case Templates
Login with Username
    Click Login Menu
    Input Username
    Input Password
    Click Login Button


Login with Google
    Click Login Menu
    Click Login dengan Google
    Select Google Account

Select Product to add to cart
    Search Product
    Click 4 stars to up
    Select Product
    Click Add to Cart






#all keywords
Open My Browser
    Open Browser                        ${url}                                                  ${browser}
    Maximize Browser Window
Click Login Menu
    Wait Until Element is Enabled       ${menu_login}                                           ${delay}
    Click Element                       ${menu_login}
Input Username
    Wait Until Element is Enabled       ${field_username}                                       ${delay}
    Input Text                          ${field_username}                                       ${username}
Input Password
    Wait Until Element is Enabled       ${field_pwd}                                            ${delay}
    Input Text                          ${field_pwd}                                            ${pwd}
Click Login Button
    Click Element                       ${btn_login}
    Sleep                               3

#Login with Google
Click Login dengan Google
    Wait Until Element is Enabled       ${btn_login_with_google}                                ${delay}
    Click Element                       ${btn_login_with_google}
Select Google Account
    Wait Until Element is Enabled       ${email}                                                ${delay}
    Click Element                       ${email}

#Search Product
Search Product
    Wait Until Element is Enabled       ${field_search}                                         ${delay}
    Input Text                          ${field_search}                                         ${product}
    Click Element                       ${button_search}

#Filter
Click 4 stars to up
    Wait Until Element is Enabled       ${4stars}                                               ${delay}
    Click Element                       ${4stars}

#Select Product
Select Product
    Wait Until Element is Enabled       ${product_selected}                                     ${delay}
    Mouse Down on Image                 ${product_selected}

#Add to Cart
Click Add to Cart
    Wait Until Element is Enabled       ${btn_add_to_cart}                                      ${delay}
    Click Element                       ${btn_add_to_cart}













