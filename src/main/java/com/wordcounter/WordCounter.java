package com.wordcounter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class WordCounter {
	
	@RequestMapping("/countwords")

	public String word(Model model,String data)
	{
		String[] array=data.split(" ");
		int wordCount=0;
		for(int i=0;i<array.length;i++)
		{
			if(!array[i].isEmpty())
			{
				wordCount++;
			}
		}
		model.addAttribute("countOfWords",wordCount);
		model.addAttribute("paragraph",data);
		return "index";
	}

}
