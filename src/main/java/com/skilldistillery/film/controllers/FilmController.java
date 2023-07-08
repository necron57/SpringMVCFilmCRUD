package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDao;

	@RequestMapping(path = { "/", "home.do" })
	public ModelAndView goHome() {
		ModelAndView mv = new ModelAndView("WEB-INF/home.jsp");
		return mv;
	}

	@RequestMapping(path = { "showFilm.do" })
	public ModelAndView showFilm(Integer filmId) {

		Film film = filmDao.findFilmById(filmId);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/home.jsp");
		mv.addObject("film", film);
		

		return mv;
	}
	
	@RequestMapping(path= {"showFilm.do"},  params="filmKeyword")
	public ModelAndView showFilm(String filmKeyword) {
		
		List<Film> films = filmDao.findFilmsByKeyword(filmKeyword);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/home.jsp");
		mv.addObject("films", films);
		
		return mv;
		
	}
	@RequestMapping(path= {"showFilm.do"},method = RequestMethod.POST, params="addFilm")
	public ModelAndView showFilm(double stufftochange) {
		return null;
		
	}

}
