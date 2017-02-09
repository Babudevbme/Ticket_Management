package com.naresh.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.naresh.model.Course;

@Controller
@RequestMapping("/course")
public class CourseController {

	private List<Course> courseList = new ArrayList<Course>();

	@GetMapping
	public String index(ModelMap modelMap){

		System.out.println("Course->index");
		courseList.add(new Course(1,"Core Java"));
		courseList.add(new Course(2,"Spring"));
		modelMap.addAttribute("COURSE_LIST", courseList);
		return "courselist.jsp";
	}

	@GetMapping("/save")
	public String store(@RequestParam("id") String id, @RequestParam("name") String name){
		System.out.println("Course->save->id:" + id +",name:" + name);
		Course course = new Course();
		course.setId(Integer.valueOf(id));
		course.setName(name);
		courseList.add(course);
		return "redirect:../courses";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("id") Long id) {
		System.out.println("Course->delete->id:" + id);
		return "redirect:../courses";
	}

}
