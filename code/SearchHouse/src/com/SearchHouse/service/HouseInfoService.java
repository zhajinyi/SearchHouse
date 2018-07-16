package com.SearchHouse.service;

import java.util.List;

import com.SearchHouse.pojo.House;
import com.SearchHouse.pojo.ShaiXuan;

public interface HouseInfoService {
	// 锟斤拷锟斤拷锟较�?
	public void addHouse(House house);

	// 删锟斤拷
	public void deleteHouse(int houseId);

	// 锟睫革拷
	public void uodateHouse(House house);

	// 锟斤拷锟斤拷Id锟斤拷询锟斤拷锟斤拷锟斤拷息
	public House getHouseById(int houseId);

	// 锟斤拷询锟斤拷锟叫的凤拷锟斤拷锟斤拷�?
	public List<House> getAllHouses();

	// 锟斤拷页 锟斤拷页锟斤�? 锟斤拷锟叫凤拷源
	public List<House> getHouseByNum(Integer number);

	// 锟斤拷锟斤拷锟斤拷锟侥ｏ拷锟斤拷锟斤拷锟斤拷姆锟斤拷锟�
	public List<House> getHouseByKeyAll(String keyName);

	// 锟斤拷锟捷关硷拷锟街诧拷�?(模锟斤拷锟斤拷询)
	public List<House> getHouseByKey(String keyName, Integer number);

	// 锟斤拷锟捷凤拷锟斤拷锟斤拷锟酵诧拷询 筛�?�锟斤拷品锟狡癸拷寓 锟斤拷锟�? HOUSESET_TYPE_FK=3
	// 锟斤拷取锟斤拷锟叫的凤拷锟斤拷锟叫憋�?;
	public List<House> getHouseByTypeAll();

	// 锟斤拷锟捷凤拷锟斤拷锟斤拷锟酵诧拷询 筛�?�锟斤拷品锟狡癸拷寓 锟斤拷锟�? HOUSESET_TYPE_FK=3;
	public List<House> getHouseByType(Integer number);

	// 锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟轿拷锟斤拷锟斤拷朔锟斤拷锟�? 锟斤拷示锟斤拷锟斤拷锟斤拷息锟斤拷锟斤拷页锟斤拷锟斤�?
	// HOUSESET_TYPE_FK=3
	public List<House> getByType();

	// ZJY,�����û�ID�鷿�ӣ�
	public List<House> getHouseByUserID(String userId);

	public List<House> getHouseMoHuAll(ShaiXuan shaiXuan);

}
