package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.BedRoom;

public interface BedroomService {
	public List<BedRoom> getAllBedroom();

	public BedRoom getBedRoomById(Integer bedroomIdFk);
}
