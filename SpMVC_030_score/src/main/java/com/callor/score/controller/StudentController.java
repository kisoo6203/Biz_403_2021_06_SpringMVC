package com.callor.score.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.score.model.ScoreInputVO;
import com.callor.score.model.StudentVO;
import com.callor.score.service.StudentService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/student")
public class StudentController {
	
	protected final StudentService stService;
	// protected final ScoreService scService;
	
	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public String Student(Locale locale, Model model){
		
		List<StudentVO> stVO = stService.selectAll();
		model.addAttribute("STUDENT",stVO);
		model.addAttribute("BODY","STUDENT_LIST");
		
		return "home";
	}
	@RequestMapping(value="/insert",method=RequestMethod.GET)
	public String insert(Model model) {
		
		StudentVO stVO = new StudentVO();
		stVO.setSt_num(stService.makeStNum());
		
		model.addAttribute("STD",stVO);
		model.addAttribute("BODY","STUDENT_INPUT");
		return "home";
	}
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String insert(StudentVO studentVO, Model model) {
		
		log.debug("Req 학생정보 : {}", studentVO.toString());
		
		int ret = stService.insert(studentVO);
		
		model.addAttribute("BODY","STUDENT_INPUT");
		return "redirect:/student";
	}
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String detail(String st_num, Model model) {
		
		// List<SubjectAndScoreDTO> ssList = scService.selectScore(st_num);
		
		//StudentVO stVO = stService.f
		
		String ret = stService.detail(model,st_num);
		
		//model.addAttribute("SSLIST",ssList);
		model.addAttribute("BODY","STUDENT_DETAIL");
		return "home";
	}
	@RequestMapping(value="/detail",method=RequestMethod.POST)
//	public String detail(
//			@RequestParam(name="subject") List<String> subject,
//			@RequestParam(name="score") List<String> score) {
	
	public String detail(ScoreInputVO scInputVO) {
//		log.debug("Subject: {} ", subject.toString());
//		log.debug("Score: {} ", score.toString());
		log.debug("Score Input {}", scInputVO.toString());
		
		String ret = stService.scoreInput(scInputVO);
		
		return "home";
	}

}






