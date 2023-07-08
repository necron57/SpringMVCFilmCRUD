package com.skilldistillery.film.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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

}
