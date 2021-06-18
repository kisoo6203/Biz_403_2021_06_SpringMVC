package com.callor.score.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class ScVO {
	
	private Integer sc_seq;
	private String sc_stnum;
	private String sc_subject;
	private String sc_score;

}
