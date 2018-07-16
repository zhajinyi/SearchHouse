package com.SearchHouse.mapper;

import com.SearchHouse.pojo.Photo;

public interface PhotoMapper {
	public void addPhoto(Photo photo);

	public void delete(Integer houseId);
}
