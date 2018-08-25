	package com.SearchHouse.pojo;

public class House {
	private Integer houseId;//����id
	
	private Integer houseTypeId;//�ⷿ���ͱ�ţ���������  ��ѡһ��ѡ �����Ա�
	
	private String houseAddress;//���ݵ�ַ
	
	private String locationName;//С������
	
	private String houseUnit;//���ݻ���
	
	private Integer houseFloor;//¥��
	
	private Integer houseFloorTotal;//һ��¥��
	
	private Integer houseArea;//ס�����	
	
	private Integer housePrice;//���
	
	private String houseName;//����
	
	private String detailedIntro;//��ϸ����
	
	private Pay pay;//������
	
	private BedRoom bedRoom;//���ұ��   һ��һ�����  ����--������
	
	private Limit limit;//���Ʊ��      һ��һ�����  ����--������
	
	private HouseSetType houseSetType;//סլ���ͱ��      һ��һ�����  ����--��סլ����
	
	private Fitment fitment;//װ�ޱ��
	
	private HouseStatus houseStatus;//����״̬���
	
	private User1 user;//�û����
	
	public House(){
		
	}

	public House(Integer houseId, Integer houseTypeId, String houseAddress, String locationName, String houseUnit,
			Integer houseFloor, Integer houseFloorTotal, Integer houseArea, Integer housePrice, String houseName,
			String detailedIntro) {
		super();
		this.houseId = houseId;
		this.houseTypeId = houseTypeId;
		this.houseAddress = houseAddress;
		this.locationName = locationName;
		this.houseUnit = houseUnit;
		this.houseFloor = houseFloor;
		this.houseFloorTotal = houseFloorTotal;
		this.houseArea = houseArea;
		this.housePrice = housePrice;
		this.houseName = houseName;
		this.detailedIntro = detailedIntro;
	}

	public Integer getHouseId() {
		return houseId;
	}

	public void setHouseId(Integer houseId) {
		this.houseId = houseId;
	}

	public Integer getHouseTypeId() {
		return houseTypeId;
	}

	public void setHouseTypeId(Integer houseTypeId) {
		this.houseTypeId = houseTypeId;
	}

	public String getHouseAddress() {
		return houseAddress;
	}

	public void setHouseAddress(String houseAddress) {
		this.houseAddress = houseAddress;
	}

	public String getLocationName() {
		return locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	public String getHouseUnit() {
		return houseUnit;
	}

	public void setHouseUnit(String houseUnit) {
		this.houseUnit = houseUnit;
	}

	public Integer getHouseFloor() {
		return houseFloor;
	}

	public void setHouseFloor(Integer houseFloor) {
		this.houseFloor = houseFloor;
	}

	public Integer getHouseFloorTotal() {
		return houseFloorTotal;
	}

	public void setHouseFloorTotal(Integer houseFloorTotal) {
		this.houseFloorTotal = houseFloorTotal;
	}

	public Integer getHouseArea() {
		return houseArea;
	}

	public void setHouseArea(Integer houseArea) {
		this.houseArea = houseArea;
	}

	public Integer getHousePrice() {
		return housePrice;
	}

	public void setHousePrice(Integer housePrice) {
		this.housePrice = housePrice;
	}

	public String getHouseName() {
		return houseName;
	}

	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}

	public String getDetailedIntro() {
		return detailedIntro;
	}

	public void setDetailedIntro(String detailedIntro) {
		this.detailedIntro = detailedIntro;
	}

	public Pay getPay() {
		return pay;
	}

	public void setPay(Pay pay) {
		this.pay = pay;
	}

	public BedRoom getBedRoom() {
		return bedRoom;
	}

	public void setBedRoom(BedRoom bedRoom) {
		this.bedRoom = bedRoom;
	}

	public Limit getLimit() {
		return limit;
	}

	public void setLimit(Limit limit) {
		this.limit = limit;
	}

	public HouseSetType getHouseSetType() {
		return houseSetType;
	}

	public void setHouseSetType(HouseSetType houseSetType) {
		this.houseSetType = houseSetType;
	}

	public Fitment getFitment() {
		return fitment;
	}

	public void setFitment(Fitment fitment) {
		this.fitment = fitment;
	}

	public HouseStatus getHouseStatus() {
		return houseStatus;
	}

	public void setHouseStatus(HouseStatus houseStatus) {
		this.houseStatus = houseStatus;
	}

	public User1 getUser() {
		return user;
	}

	public void setUser(User1 user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "House [houseId=" + houseId + ", houseTypeId=" + houseTypeId + ", houseAddress=" + houseAddress
				+ ", locationName=" + locationName + ", houseUnit=" + houseUnit + ", houseFloor=" + houseFloor
				+ ", houseFloorTotal=" + houseFloorTotal + ", houseArea=" + houseArea + ", housePrice=" + housePrice
				+ ", houseName=" + houseName + ", detailedIntro=" + detailedIntro + ", priceContains=" 
				+ ", pay=" + pay + ", bedRoom=" + bedRoom + ", limit=" + limit
				+ ", houseSetType=" + houseSetType + ", fitment=" + fitment + ", houseStatus=" + houseStatus + ", user="
				+ user + "]";
	}
}
