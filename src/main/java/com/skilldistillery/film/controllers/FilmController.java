package com.skilldistillery.film.controllers;

import java.util.List;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	@RequestMapping(path = { "showFilm.do" }, params = "filmKeyword")
	public ModelAndView showFilm(String filmKeyword) {

		List<Film> films = filmDao.findFilmsByKeyword(filmKeyword);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/home.jsp");
		mv.addObject("films", films);

		return mv;

	}

	@RequestMapping(path = { "createFilm.do" }, params = "filmTitle")
	public ModelAndView showFilm(String filmTitle, String filmDescrip) {

		Film film = new Film(filmTitle, filmDescrip);
		Film createdfilm = filmDao.createFilm(film);

		ModelAndView mv = new ModelAndView();

		mv.setViewName("WEB-INF/home.jsp");
		mv.addObject("film", createdfilm);

		return mv;

	}

	@RequestMapping(path = { "deleteFilm.do" }, params = "filmId")
	public ModelAndView deleteFilm(@RequestParam int filmId) {

		boolean createdfilm = filmDao.deleteFilm(filmId);

		ModelAndView mv = new ModelAndView();

		mv.setViewName("WEB-INF/delete.jsp");
		mv.addObject("film", createdfilm);

		return mv;
	}

}
