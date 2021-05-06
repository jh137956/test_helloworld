<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
        
        body {
            margin: 30px;
            padding: 0;
            background-color: #ffffff;
        }

        .container {
            align-items: center;
             
        }

        .membership {
            max-width: 1100px;
            margin: 180px;

        }
        .joinForm {
            margin-top: 20px;
            width: 1000px;
        }

        .joinForm th, td {
            border: 1px solid black;
            padding: 5px;
        }
        
    </style>

</head>
<body>
	<div class="container">
        <div class="membership">
            <div>
                <h3 style="text-align: center;" class="head-style">회원가입</h3>
            </div>
            <form class="joinForm" name="joinPage" id="joinPage" method="POST" action="/member/join">
                <div class="info">
                    <table>
                        <tr>
                            <th><span class="span-color">*</span>이름</th>    
                            <td><input type="text" id="mb_name" name="mb_name" class="input-text"></td>
                        </tr>
                        <tr>
                            <th><span class="span-color">*</span>아이디</th>    
                            <td><input type="text" id="mb_id" name="mb_id" class="input-text">
                                <input type="button" name="btn_check" id="btn_check" value="아이디중복확인" class="button">
                                <p class="hint">*영문, 숫자만 가능합니다. (6~16자)</p>
                            </td>
                        </tr>
                        <tr>
                            <th><span class="span-color">*</span>비밀번호</th>    
                            <td><input type="password" id="mb_pw" name="mb_pw" class="input-text"><br></td>
                        </tr>
                        <tr>
                            <th><span class="span-color">*</span>비밀번호 확인</th>    
                            <td><input type="password" id="mb_pw2" name="mb_pw2" class="input-text"><br>
                                <p class="hint">*영소문자, 숫자, 특수문자 포함(6~16자)</p>
                                
                            </td>
                        </tr>
                        <tr>
                            <th><span class="span-color">*</span>생년월일/성별</th>
                            <td><input type="date" id="date" name="">
                                <input type="radio" id="mb_sex" name="mb_sex" value="male">
                                <label for="male">남자</label>
                                <input type="radio" id="mb_sex" name="mb_sex" value="female">
                                <label for="female">여자</label>
                            </td> 
                        </tr>
                        <tr>
                            <th rowspan="2"><span class="span-color">*</span>이메일</th>
                            <td><input  type="text" id="mb_email" name="mb_email" class="input-text"> @ <input type="text" id="mb_email2" name="mb_email2" class="input-text">
                                <select id="emailaddr" name="emailaddr">
                                    <option value="메일주소선택">메일주소선택</option>
                                    <option value="네이버">naver.com</option>
                                    <option value="다음">daum.net</option>
                                    <option value="네이트">nate.com</option>
                                    <option value="기타">기타</option>
                                </select>
                                <input type="button" name="email_check" id="email_check" value="인증메일발송" class="button">
                            </td>
                        </tr>
                        <tr>   
                            <td>
                                
                                <input type="text">
                                <input type="button" name="email_check2" id="email_check2" value="인증확인" class="button">
                            </td>
                        </tr> 
                        <tr>
                            <th><span class="span-color">*</span>휴대전화</th>
                            <td>
                                 <select id="phone">    
                                    <option value="">선택</option>
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="016">016</option>
                                    <option value="017">017</option>
                                    <option value="019">019</option>
                                </select>
                                <input type="text" id="mb_cp" name="mb_cp" maxlength="4" class="input-text"><span>-</span><input type="text" id="mb_cp2" name="mb_cp" maxlength="4" class="input-text"><br>
                            </td>
                        </tr>
                        <tr>
                            <th rowspan="2"><span class="span-color">*</span>주소</th>
                            <td><input type="text" id="u_zipcode" placeholder="우편번호" class="input-text">
                                <input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" id="mb_addr" name="mb_addr" placeholder="주소" class="input-text">
                                <input type="text" id="mb_addr2" name="mb_addr2" placeholder="상세주소" class="input-text">
                            </td>
                        </tr>
                        <tr>
                            <th><span class="span-color"></span>정보수신 여부</th>
                            <td><input type="checkbox" id="email_allow" name="e_allow">
                                <label for="email_allow">이메일로 수신</label>
                                <input type="checkbox" id="phone_allow" name="p_allow">
                                <label for="phone_allow">SNS로 수신</label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="transmit">
                    <button id="btnjoin" type="button" class="btn btn-primary pull-right">회원가입</button>
                </div>
            </form>
        </div>    
    </div>
    <script>
		$(document).ready(function(){
			
			var form = $("#joinPage");
			
			//리스트버튼 클릭.(페이징,검색관련 정보)
			$("#btnjoin").click(function(){
				//location.href = "/board/list";  // 페이지 이동(주소)
	
				form.attr("action","/member/join").submit();
				
			});
				
		});
	</script>
	    
</body>


</html>