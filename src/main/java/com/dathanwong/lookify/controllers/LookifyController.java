package com.dathanwong.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dathanwong.lookify.models.Song;
import com.dathanwong.lookify.services.SongService;

@Controller
public class LookifyController {
	
	private SongService service;
	
	public LookifyController(SongService service) {
		this.service = service;
	}
	
	@RequestMapping("/")
	public String homePage() {
		return "home.jsp";
	}
	
	@RequestMapping("/search/{searchString}")
	public String searchPage(@PathVariable("searchString") String search, Model model) {
		List<Song> songs = service.findArtist(search);
		model.addAttribute("songs", songs);
		model.addAttribute("query", search);
		return "search.jsp";
	}
	
	@PostMapping("/search")
	public String doSearch(@RequestParam(value="searchString") String searchString) {
		return "redirect:/search/"+searchString;
	}
	
	@RequestMapping("/dashboard")
	public String dashboardPage(Model model) {
		List<Song> songs = service.getAll();
		model.addAttribute("songs", songs);
		return "dashboard.jsp";
	}
	
	@RequestMapping("/search/topTen")
	public String topTenPage(Model model) {
		List<Song> songs = service.findAllByRating();
		model.addAttribute("songs", songs);
		return "topTen.jsp";
	}
	
	@RequestMapping("/songs/{id}")
	public String songPage(@PathVariable("id") Long id, Model model) {
		Song song = service.findSong(id);
		model.addAttribute("song", song);
		return "song.jsp";
	}
	
	@RequestMapping("/songs/new")
	public String newSongPage(@ModelAttribute("song") Song song) {
		return "newSong.jsp";
	}
	
	@PostMapping("/songs")
	public String createSong(@Valid @ModelAttribute("song") Song song, BindingResult result) {
		if(result.hasErrors()) {
			return "newSong.jsp";
		}else {
			service.create(song);
			return "redirect:/dashboard";
		}
	}
	
	@DeleteMapping("/songs/{id}")
	public String deleteSong(@PathVariable("id") Long id) {
		service.deleteSong(id);
		return "redirect:/dashboard";
	}
}
