package com.kdparts.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class signUpDTO {
	@NotBlank(message = "아이디를 입력해주세요", groups = ValidationGroups.NotEmptyGroup.class)
	@Pattern(regexp = "[A-Za-z0-9]{4,15}$", message = "아이디는 영어, 숫자 4 ~15자리로 입력 가능합니다")
	private String userId;
	
	@NotBlank(message = "비밀번호를 입력해주세요", groups = ValidationGroups.NotEmptyGroup.class)
	@Pattern(regexp = "(?=.*[0-9])(?=.*[a-zA-Z]).{8,16}", message = "최소 하나의 문자 및 숫자를 포함한 8~16자이여야 합니다")
	private String userPw;
	
	@NotBlank(message = "이메일을 입력해주세요", groups = ValidationGroups.NotEmptyGroup.class)
	@Pattern(regexp = "^([0-9a-zA-Z_\\.-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}$" , message = "올바른 이메일 형식이 아닙니다")
	private String email;
	
	@NotBlank(message = "닉네임을 입력해주세요", groups = ValidationGroups.NotEmptyGroup.class)
	@Pattern(regexp = "^[가-힣|a-z|A-Z|0-9|]{1,10}$", message = "닉네임은 한글, 영어, 숫자만 1 ~10자리로 입력 가능합니다")
	private String nickname;
	
	private String telecom;
	
	@Pattern(regexp = "^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$", message = "휴대폰번호를 확인해 주세요", groups = ValidationGroups.NotEmptyGroup.class)
	private String phone;
	
	public signUpDTO(String userId, String UserPw, String email, String nickname, String telecom, String phone) {
		this.userId =userId;
		this.userPw =userPw;
		this.email=email;
		this.nickname=nickname;
		this.telecom=telecom;
		this.phone=phone;
	}
}
