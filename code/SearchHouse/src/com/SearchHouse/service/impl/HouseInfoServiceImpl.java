package com.gaobo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gaobo.mapper.HouseMapper;
import com.gaobo.mapper.PhotoMapper;
import com.gaobo.mapper.PriceContainsMapper;
import com.gaobo.pojo.House;
import com.gaobo.pojo.Photo;
import com.gaobo.pojo.PriceContain;
import com.gaobo.pojo.ShaiXuan;
import com.gaobo.service.HouseInfoService;

@Service
@Transactional
public class HouseInfoServiceImpl implements HouseInfoService {
	@Resource
	HouseMapper houseMapper;
	@Resource
	PhotoMapper photoMapper;
	@Resource
	PriceContainsMapper priceContainsMapper;

	public PriceContainsMapper getPriceContainsMapper() {
		return priceContainsMapper;
	}

	public void setPriceContainsMapper(PriceContainsMapper priceContainsMapper) {
		this.priceContainsMapper = priceContainsMapper;
	}

	public PhotoMapper getPhotoMapper() {
		return photoMapper;
	}

	public void setPhotoMapper(PhotoMapper photoMapper) {
		this.photoMapper = photoMapper;
	}

	public HouseMapper getHouseMapper() {
		return houseMapper;
	}

	public void setHouseMapper(HouseMapper houseMapper) {
		this.houseMapper = houseMapper;
	}

	@Override
	public void addHouse(House house) {
		// TODO Auto-generated method stub
		houseMapper.addHouse(house);

		Integer houseId = house.getHouseId();

		List<String> photos = house.getPhotos();
		List<String> priceContains = house.getPriceContains();
		for (String photoName : photos) {
			photoMapper.addPhoto(new Photo(null, photoName, houseId));
		}
		for (Integer i = 0; i < priceContains.size(); i++) {
			priceContainsMapper.addPri(new PriceContain(houseId, priceContains.get(i), i));
		}
	}

	@Override
	public void deleteHouse(int houseId) {
		// TODO Auto-generated method stub
		houseMapper.deleteHouse(houseId);
	}

	@Override
	public void uodateHouse(House house) {
		// TODO Auto-generated method stub
		houseMapper.updateHouse(house);
	}

	@Override
	public House getHouseById(int houseId) {
		// TODO Auto-generated method stub
		return houseMapper.getHouseById(houseId);
	}

	@Override
	public List<House> getAllHouses() {
		// TODO Auto-generated method stub
		return houseMapper.getAllHouses();
	}

	@Override
	public List<House> getHouseByType(Integer number) {

		return houseMapper.getHouseByType(number);
	}

	@Override
	public List<House> getHouseByKeyAll(String keyName) {
		// TODO Auto-generated method stub
		return houseMapper.getHouseByKeyAll(keyName);
	}

	@Override
	public List<House> getHouseByKey(String keyName, Integer number) {
		// TODO Auto-generated method stub
		return houseMapper.getHouseByKey(keyName, number);
	}

	@Override
	public List<House> getHouseByTypeAll() {
		// TODO Auto-generated method stub
		return houseMapper.getHouseByTypeAll();
	}

	@Override
	public List<House> getByType() {

		return houseMapper.getByType();
	}

	@Override
	public List<House> getHouseByNum(Integer number) {

		return houseMapper.getHouseByNum(number);
	}

	@Override
	public List<House> getHouseByUserID(String userId) {
		// TODO Auto-generated method stub
		return houseMapper.getHouseByUserID(userId);
	}

	@Override
	public List<House> getHouseMoHuAll(ShaiXuan shaiXuan) {
		// TODO Auto-generated method stub
		return houseMapper.getHouseMoHuAll(shaiXuan);
	}

}
