package com.dathanwong.lookify.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dathanwong.lookify.models.Song;

public interface SongRepository extends CrudRepository<Song, Long>{
	List<Song> findAll();
	List<Song> findAllByOrderByRatingDesc();
	List<Song> findByArtistContaining(String searchString);
}
