<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마켓컬리 : 내일의 장보기, 마켓컬리</title>
		<link rel="stylesheet" href="/resources/css/reset.css"/>
		<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
		
		<link rel="stylesheet" href="/resources/css/join.css"/>
		<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="/resources/js/join.js"></script>
	</head>
<body>
	<%@include file="/WEB-INF/views/includes/header.jsp" %>
	<div class="join_form_wrap">
		<div class="form_header">
			<h1>회원가입</h1>
			<p><span class="necessary">*</span>필수입력사항</p>
		</div>
		<table>
			<tbody>
				<tr>
					<td>아이디<span class="necessary">*</span></td>
					<td><input type="text" id="user_id" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"/></td>
					<td><button id="dup_check">중복확인</button></td>
				</tr>
				<tr>
					<td>비밀번호<span class="necessary">*</span></td>
					<td><input type="password" id="user_pwd" placeholder="비밀번호를 입력해주세요"/></td>
				</tr>
				<tr>
					<td>비밀번호 확인<span class="necessary">*</span></td>
					<td><input type="password" id="user_pwd_confirm" placeholder="비밀번호를 한번 더 확인해주세요"/></td>
				</tr>
				<tr>
					<td>이름<span class="necessary">*</span></td>
					<td><input type="text" id="user_name" placeholder="이름을 입력해주세요"/></td>
				</tr>
				<tr>
					<td>이메일<span class="necessary">*</span></td>
					<td><input type="text" id="user_email" placeholder="이메일 입력란입니다"/></td>
					<td><button id="email_dup_check">중복확인</button></td>
				</tr>
				
				<tr>
					<td>주소<span class="necessary">*</span></td>
					<td>
						<button id="address_search"><i class="fas fa-search"></i>주소 검색</button>
						<p>배송지에 따라 상품 정보가 달라질 수 있습니다.</p>
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" name="user_gender" id="gender_male" class="user_gender" value="0"/>
						<label for="gender_male" id="gender_male_icon">
							<i class="fas fa-circle"></i>
						</label>
						<label for="gender_male" id="gender_male_text">남자</label>
						
						<input type="radio" name="user_gender" id="gender_female" class="user_gender" value="1"/>
						<label for="gender_female" id="gender_male_icon">
							<i class="fas fa-circle"></i>
						</label>
						<label for="gender_female" id="gender_male_text">여자</label>
						
						<input type="radio" name="user_gender" id="gender_deselect" class="user_gender" value="2" checked/>
						<label for="gender_deselect" id="gender_male_icon">
							<i class="fas fa-circle"></i>
						</label>
						<label for="gender_deselect" id="gender_male_text">선택안함</label>
					</td>
				</tr>
				<tr>
					<td>생년원일</td>
					<td>
						<div class="user_birth">
							<input type="number" id="user_birth_year" placeholder="YYYY"/>
							<span>/</span>
							<input type="number" id="user_birth_month" placeholder="MM"/>
							<span>/</span>
							<input type="number" id="user_birth_date" placeholder="DD"/>
						</div>
					</td>
				
				</tr>
				<tr>
					<td>추가입력사항</td>
					<td>
						<input type="radio" name="additional" id="recommand_id"/>
						<label for="recommand_id" class="radio_icon">
									<i class="fas fa-circle"></i>
						</label>
						<label for="recommand_id">추천인 아이디</label>
						
						<input type="radio" name="additional" id="event_name"/>
						<label for="event_name" class="radio_icon">
													<i class="fas fa-circle"></i>
						</label>
						<label for="event_name">참여 이벤트명</label>
				
						<div class="recommand_id_input">
							<input type="text" id="recommand_user_id" placeholder="추천인 아이디를 입력해주세요"/>
							<p>
								추천인 아이디와 참여 이벤트 명 중 하나만 선택 가능합니다.<br>
								가입 이후, 수정이 불가능합니다.<br>
								대소문자 및 띄어쓰기에 유의해주세요
							</p>
						</div>
						<div class="event_input">
							<input type="text" id="event_input" placeholder="참여 이벤트명을 입력해주세요"/>
							<p>
								추천인 아이디와 참여 이벤트 명 중 하나만 선택 가능합니다.<br>
								가입 이후, 수정이 불가능합니다.<br>
								대소문자 및 띄어쓰기에 유의해주세요
							</p>
						</div>
					</td>
				</tr>
				<tr class="aggrements">
					<td>이용약관동의<span class="necessary">*</span></td>
					<td colspan="2">
						<div class="aggrements_row">
							<div>
								<input type="checkbox" id="agree_all" />
								<label for="agree_all" class="checkbox_icon">
									<i class="fas fa-check"></i>
								</label>
							</div>
							<div>
								<label for="agree_all" class="agree_all_label">전체 동의합니다.</label>
								<p>선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
							</div>
						</div>
						<div class="aggrements_row">
							<div>
								<input type="checkbox" id="agree_info_save1" />
								<label for="agree_info_save1" class="checkbox_icon">
									<i class="fas fa-check"></i>
								</label>
							</div>
							<div>
								<label for="agree_info_save1">
									이용약관 동의 <span class="necessary_text">(필수)</span>
								</label>
								<a href="#">약관 보기<i class="fas fa-chevron-right"></i></a>
							</div>
						</div>
						<div class="aggrements_row">
							<div>
								<input type="checkbox" id="agree_info_save2" />
								<label for="agree_info_save2" class="checkbox_icon">
										<i class="fas fa-check"></i>
								</label>
							</div>
							<div>
								<label for="agree_info_save2">
									개인정보 수집 이용동의 <span class="necessary_text">(선택)</span>
								</label>
								<a href="#">약관 보기<i class="fas fa-chevron-right"></i></a>
							</div>
						</div>
						<div class="aggrements_row">
							<div>
								<input type="checkbox" id="agree_info_receive" />
								<label for="agree_info_receive" class="checkbox_icon">
										<i class="fas fa-check"></i>
								</label>
							</div>
							<div>
								<label for="agree_info_receive">
									무료배송, 할인쿠폰 등 혜택/정보수신 동의 <span class="necessary_text">(선택)</span>
								</label>
							</div>
						</div>
						<div class="aggrements_row indent">
							<input type="checkbox" id="agree_info_sms"/>
							<label for="agree_info_sms" class="checkbox_icon">
								<i class="fas fa-check"></i>
							</label>
							<label for="agree_info_sms">SMS</label>
							
							<input type="checkbox" id="agree_info_email"/>
							<label for="agree_info_email" class="checkbox_icon">
								<i class="fas fa-check"></i>
							</label>
							<label for="agree_info_email">이메일</label>
								
							<div class="sms_text">ㄴ<span>동의시 한 달간 [5% 적립] + [무제한 무료배송]</span><span>(첫 주문 후 적용)</span></div>	
						</div>
						<div class="aggrements_row">
							<div>
								<input type="checkbox" id="more_than_14" />
								<label for="more_than_14" class="checkbox_icon">
									<i class="fas fa-check"></i>
								</label>
							</div>
							<div>
								<label for="more_than_14">
									본인은 만 14세 이상입니다.<span class="necessary_text">(필수)</span>
								</label>
							</div>
						</div>
					</td>
				</tr>
				
			</tbody>
		</table>
		<div class="btn_area">
			<button id="join_btn">가입하기</button>
		</div>
	</div>
	
	<%@include file="/WEB-INF/views/includes/footer.jsp" %>
	
</body>
</html>