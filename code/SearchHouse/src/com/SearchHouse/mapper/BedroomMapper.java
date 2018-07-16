package com.gaobo.mapper;

import java.util.List;

import com.gaobo.pojo.BedRoom;

public interface BedroomMapper {
	public List<BedRoom> getAllBedroom();

	public BedRoom getBedRoomById(Integer bedroomIdFk);
}
