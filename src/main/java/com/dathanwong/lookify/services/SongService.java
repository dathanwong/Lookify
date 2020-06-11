package com.dathanwong.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.dathanwong.lookify.models.Song;
import com.dathanwong.lookify.repositories.SongRepository;

@Service
public class SongService {

	private final SongRepository repo;
	
	public SongService(SongRepository repo) {
		this.repo = repo;
	}
	
	//get all songs
	public List<Song> getAll(){
		return repo.findAll();
	}
	
	//create new song
	public Song create(Song song) {
		repo.save(song);
		return song;
	}
	
	//get one song
	public Song findSong(Long id) {
		Optional<Song> song = repo.findById(id);
		if(song.isPresent()) {
			return song.get();
		}
		return null;
	}
	
	//Delete a song
	public Song deleteSong(Long id) {
		Song song = this.findSong(id);
		repo.deleteById(id);
		return song;
	}
	
	//Get all songs ordered by rating
	public List<Song> findAllByRating(){
		return repo.findAllByOrderByRatingDesc();
	}
	
	//Find all songs containing input artist
	public List<Song> findArtist(String searchString){
		return repo.findByArtistContaining(searchString);
	}
}
