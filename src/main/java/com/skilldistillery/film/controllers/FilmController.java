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

	@RequestMapping(path = "showFilm.do")
	public String showFilm() {
		return "WEB-INF/viewFilm.jsp";
	}

	@RequestMapping(path = "showFilm.do", params = "filmId")
	public ModelAndView showFilm(int filmId) {

		Film film = filmDao.findFilmById(filmId);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/viewFilm.jsp");
		mv.addObject("film", film);

		return mv;
	}

//	@RequestMapping(path = "showByKeyWord.do")
//	public String showFilmByKeyWord() {
//		return "WEB-INF/viewFilm.jsp";
//	}

	@RequestMapping(path = { "showByKeyWord.do" }, params = "filmKeyword")
	public ModelAndView showFilmByKeyWord(String filmKeyword) {

		List<Film> films = filmDao.findFilmsByKeyword(filmKeyword);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/viewFilm.jsp");
		mv.addObject("films", films);

		return mv;

	}

	@RequestMapping(path = { "createFilm.do" }, params = "filmTitle")
	public ModelAndView createFilm(String filmTitle, String filmDescrip) {

		Film film = new Film(filmTitle, filmDescrip);
		Film createdfilm = filmDao.createFilm(film);

		ModelAndView mv = new ModelAndView();

		mv.setViewName("WEB-INF/viewFilm.jsp");
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


	@RequestMapping(path = { "updateFilm.do" })
	public ModelAndView updateFilm(@RequestParam String title, String description, int languageId, int filmId) {

		Film film = new Film(title, description, languageId, filmId);
		boolean updatedfilm = filmDao.updateFilm(film);

		ModelAndView mv = new ModelAndView();

		mv.setViewName("WEB-INF/updatedFilm.jsp");
		mv.addObject("film", updatedfilm);

		return mv;

	}

}
