# WAS (Web Application Service, Web Application Server:tomcat)에서 HTTP Status 코드

## 정상적인 Request와 Response가 이루어졌을때
* 200번코드 : 가장 완벽한 상태
* 300번코드 : Redirection이 되거나, 이전 응답과 동일한 결과일때

## Request가 잘못되었을 때 
* 404코드 : URI를 잘못 요청했을때,  
Tomcat Server의 method에서 Rendering할 JSP파일을 못찾았을 때  
(메시지가 포함된다)

* 405코드 : Request한 URI의 mapping을 찾을 수 있으나, RequestMethod가  
해당하는 항목이 없을때

* 400코드 : 서버에 데이터를 전송했는데, 데이터 type이 잘못되었을 경우
예) Java method의 매개변수가 숫자형인데 전송하는 데이터에 공백, 문자열, null 값이  
포함되어 있는 경우

## 서버 내부 오류
* 500코드 : 내부에서 코드가 실행되는 동안 Exception이 발생하는 경우
오류메시지를 검토하여 잘~!! 찾아야 한다
개발자가 만든 코드 메시지 찾기, Exception 종류 이해하기
