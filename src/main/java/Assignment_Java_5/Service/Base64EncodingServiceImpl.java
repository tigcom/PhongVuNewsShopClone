package Assignment_Java_5.Service;

import java.util.Base64;

import org.springframework.stereotype.Service;

@Service
public class Base64EncodingServiceImpl implements Base64EncodingService{
	 @Override
	    public String encode(String data) {
	        if (data == null) return null;
	        return Base64.getEncoder().encodeToString(data.getBytes());
	    }

	    @Override
	    public String decode(String encodedData) {
	        if (encodedData == null) return null;
	        return new String(Base64.getDecoder().decode(encodedData));
	    }
}
