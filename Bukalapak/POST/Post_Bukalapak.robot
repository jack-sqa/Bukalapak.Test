*** Settings ***
Library                 RequestsLibrary
Library                 JSONLibrary
Library                 Collections


*** Variables ***
${base_url}             https://jsonplaceholder.typicode.com
${json_data}            /posts

*** Test Cases ***
post_data
    Create Session                  mysession                       ${base_url}                 verify=true
    ${body}=                        Create Dictionary               title=recommendation    body=motorcycles    userId=12
    ${headers}=                     Create Dictionary               Content-Type=application/json
    ${response}=                    Post Request                    mysession        ${json_data}    data=${body}   headers=${headers}


    Log to Console                  ${response.status_code}
    Log to Console                  ${response.content}

    #Validation
    ${status_code}=                 Convert to String         ${response.status_code}
    Should be Equal                 ${status_code}                  201

