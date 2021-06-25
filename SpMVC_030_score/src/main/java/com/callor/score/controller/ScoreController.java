package com.callor.score.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.score.model.ScoreDTO;
import com.callor.score.service.ScoreService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
@RequestMapping("/score")
public class ScoreController {
	protected final ScoreService scService;
	
	@RequestMapping(value={"/",""}, method = RequestMethod.GET)
	public String list(Locale locale, Model model){
		
		List<ScoreDTO> scoreList = scService.selectViewAll();
		model.addAttribute("SCORES",scoreList);
		
		model.addAttribute("BODY","SCORE_VIEW");
		
		return "home";
	}

}
