# Spring file upload project
* Web client에서 파일을 선택하여 서버에  Upload하기
*이미지 게시판, 이미지 갤러리 등을 만들때 사용한다

## 필요한 Dependency

<exclusion>
<groupId>commons-logging</groupId>
<artifactId>commons-logging</artifactId>
</exclusion>

<dependency>
<groupId>commons-fileupload</groupId>
<artifactId>commons-fileupload</artifactId>
<version>1.4</version>
</dependency>



	<!-- file upload와 관련한 bean을 설정하기 -->
	<!-- 
	단위
	0 : 개...
	000 : K(Killo) 개
	000,000 : M(Mega) 개
	000,000,000 : G(Giga) 개
	000,000,000,000 : T(Tera) 개
	-->
	<bean id="multipartResolver" class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
		<property name="maxUploadSizePerFile" value="000"/>
		<property name="maxUploadSize" value="30000000"/>
	
	</bean>
	
* maxUploadPerFile : 파일 1개의 용량 제한
* maxUploadFile : 전체 파일 용량 제한, 다수의 파일을 올릴때