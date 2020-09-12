*** Settings ***
Library                 RequestsLibrary
Library                 JSONLibrary
Library                 os
Library                 Collections


*** Variables ***
${base_url}             https://jsonplaceholder.typicode.com
${json_data}            /posts


*** Test Cases ***
datatype_validations
      Create Session                                            mysession                       ${base_url}             verify=true
      ${response}=                      Get Request             mysession                       ${json_data}

      ${json_obj}=                      To Json                 ${response.content}

      #userid validation
      ${userId}=                        Get Value From Json     ${json_obj}                      $[80].userId
      Log to Console                    ${userId}
      Should Not Be Equal as Strings    ${userId}               9

      #id validation
      ${id}=                            Get Value From Json     ${json_obj}                      $[80].id
      Log to Console                    ${id}
      Should Not Be Equal as Strings    ${id}                   81

      #Title validation
      ${title}=                         Get Value From Json     ${json_obj}                      $[80].title
      Log to Console                    ${title}
      Should Not Be Equal as Strings    ${title}                tempora rem veritatis voluptas quo dolores vero

      #Body Validation
      ${body}=                          Get Value From Json     ${json_obj}                      $[21].body
      Log to Console                    ${body}
      Should Not Be Equal as Strings    ${body}                 eos qui et ipsum ipsam suscipit aut\nsed omnis non odio\nexpedita earum mollitia molestiae aut atque rem suscipit\nnam impedit esse


*** Keywords ***
