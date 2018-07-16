package com.gaobo.service;

import java.util.List;

import com.gaobo.pojo.BedRoom;

public interface BedroomService {
	public List<BedRoom> getAllBedroom();

	public BedRoom getBedRoomById(Integer bedroomIdFk);
}
