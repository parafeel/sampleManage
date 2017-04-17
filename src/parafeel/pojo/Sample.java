package parafeel.pojo;

public class Sample {
	private int id;
	private String resourceID; 
	private String sampleID;
	private String sampleName; 
	private String foreignName; 
	private String origin; 
	private String province; 
	private String country; 
	private String sampleClassID; 
	private String sampleClass; 
	private String mainUse; 
	private String geologyPosition; 
	private String briefDescription ;
	private String specificUse; 
	private String sampleProvider; 
	private String sampleProvideTime; 
	private String saveLocation; 
	private String sampleNumber; 
	private String locationNumber; 
	private String collectionNumber; 
	private String collectionCount;

	public Sample() {
		super();
	}
	
	
	public Sample(int id, String resourceID, String sampleID, String sampleName, String foreignName, String origin,
			String province, String country, String sampleClassID, String sampleClass, String mainUse,
			String geologyPosition, String briefDescription, String specificUse, String sampleProvider,
			String sampleProvideTime, String saveLocation, String sampleNumber, String locationNumber,
			String collectionNumber, String collectionCount) {
		super();
		this.id = id;
		this.resourceID = resourceID;
		this.sampleID = sampleID;
		this.sampleName = sampleName;
		this.foreignName = foreignName;
		this.origin = origin;
		this.province = province;
		this.country = country;
		this.sampleClassID = sampleClassID;
		this.sampleClass = sampleClass;
		this.mainUse = mainUse;
		this.geologyPosition = geologyPosition;
		this.briefDescription = briefDescription;
		this.specificUse = specificUse;
		this.sampleProvider = sampleProvider;
		this.sampleProvideTime = sampleProvideTime;
		this.saveLocation = saveLocation;
		this.sampleNumber = sampleNumber;
		this.locationNumber = locationNumber;
		this.collectionNumber = collectionNumber;
		this.collectionCount = collectionCount;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSampleID() {
		return sampleID;
	}
	public void setSampleID(String sampleID) {
		this.sampleID = sampleID;
	}
	public String getResourceID() {
		return resourceID;
	}
	public void setResourceID(String resourceID) {
		this.resourceID = resourceID;
	}
	public String getSampleName() {
		return sampleName;
	}
	public void setSampleName(String sampleName) {
		this.sampleName = sampleName;
	}
	public String getForeignName() {
		return foreignName;
	}
	public void setForeignName(String foreignName) {
		this.foreignName = foreignName;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getSampleClass() {
		return sampleClass;
	}
	public void setSampleClass(String sampleClass) {
		this.sampleClass = sampleClass;
	}
	public String getMainUse() {
		return mainUse;
	}
	public void setMainUse(String mainUse) {
		this.mainUse = mainUse;
	}
	public String getBriefDescription() {
		return briefDescription;
	}
	public void setBriefDescription(String briefDescription) {
		this.briefDescription = briefDescription;
	}
	public String getSpecificUse() {
		return specificUse;
	}
	public void setSpecificUse(String specificUse) {
		this.specificUse = specificUse;
	}
	public String getSaveLocation() {
		return saveLocation;
	}
	public void setSaveLocation(String saveLocation) {
		this.saveLocation = saveLocation;
	}
	public String getSampleNumber() {
		return sampleNumber;
	}
	public void setSampleNumber(String sampleNumber) {
		this.sampleNumber = sampleNumber;
	}
	public String getLocationNumber() {
		return locationNumber;
	}
	public void setLocationNumber(String locationNumber) {
		this.locationNumber = locationNumber;
	}
	public String getCollectionNumber() {
		return collectionNumber;
	}
	public void setCollectionNumber(String collectionNumber) {
		this.collectionNumber = collectionNumber;
	}
	public String getCollectionCount() {
		return collectionCount;
	}
	public void setCollectionCount(String collectionCount) {
		this.collectionCount = collectionCount;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getSampleClassID() {
		return sampleClassID;
	}

	public void setSampleClassID(String sampleClassID) {
		this.sampleClassID = sampleClassID;
	}

	public String getGeologyPosition() {
		return geologyPosition;
	}

	public void setGeologyPosition(String geologyPosition) {
		this.geologyPosition = geologyPosition;
	}

	public String getSampleProvider() {
		return sampleProvider;
	}

	public void setSampleProvider(String sampleProvider) {
		this.sampleProvider = sampleProvider;
	}

	public String getSampleProvideTime() {
		return sampleProvideTime;
	}

	public void setSampleProvideTime(String sampleProvideTime) {
		this.sampleProvideTime = sampleProvideTime;
	}
	
	
	
}
