package com.SearchHouse.mapper;

import java.util.List;

import com.SearchHouse.pojo.BedRoom;

public interface BedroomMapper {
	public List<BedRoom> getAllBedroom();

	public BedRoom getBedRoomById(Integer bedroomIdFk);
}
