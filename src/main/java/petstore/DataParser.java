package petstore;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DataParser {

	private List<Map<String, String>> pets;

	public DataParser(List<Map<String, String>> pets) {
		this.pets = pets;
	}
	
	public Map<String, Integer> getTotalByName() {
        Map<String, Integer> result = new HashMap<>();
        for (Map<String, String> pet : this.pets) {
        	String petName = pet.get("name");
        	result.compute(petName, (k, v) -> (v == null) ? 1 : v++);
		}
        return result;
    }
	
}
