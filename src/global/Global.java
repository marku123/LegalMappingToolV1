package global;

public class Global {

	private int CountryID;
	private String CountryName;
	private String CountryRegion;
	
	public Global(int ID, String Country, String Region){
	        this.CountryID = ID;
	        this.CountryName = Country;
	        this.CountryRegion = Region;
	}
	
	public int getCountryID() {
		return CountryID;
	}
	public void setCountryID(int countryID) {
		CountryID = countryID;
	}
	public String getCountryName() {
		return CountryName;
	}
	public void setCountryName(String countryName) {
		CountryName = countryName;
	}
	public String getCountryRegion() {
		return CountryRegion;
	}
	public void setCountryRegion(String countryRegion) {
		CountryRegion = countryRegion;
	}
		
}
