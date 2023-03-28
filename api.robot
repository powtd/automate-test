***Settings***
Library               RequestsLibrary

***Test Cases***
Quick Get A JSON Body Test
        Create Session  jsonplaceholder  https://jsonplaceholder.typicode.com
        ${resp_json}=     GET On Session  jsonplaceholder  /posts/1
        Should Be Equal As Strings    1  ${resp_json.json()}[id]

Post Request Test
        &{data}=    Create dictionary  title=Robotframework requests  body=This is a test!  userId=5
        ${resp}=    POST On Session    jsonplaceholder  /posts  json=${data}  expected_status=201
        Should Be Equal     ${resp.json()['body']}    This is a test!
        Log To Console      ${resp.json()['userId']}
