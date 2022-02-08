public class CountryCodeHelper {

    public static String getCountryCode(String country) {
        Country_Code__mdt info = Country_Code__mdt.getInstance(country);

        return info.Country_Code__c;
    }
}