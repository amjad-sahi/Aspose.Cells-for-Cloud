package com.aspose.cells.api;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import java.util.Base64;


public class APIGenerator {
	private static final String HMAC_SHA1_ALGORITHM = "HmacSHA1";
	public static final String APP_SID = "1c7a12ca-efa8-466e-b83d-234d9d5e2309";
	public static final String API_KEY = "a165298dc077f8852d5eb6e5bf49310d";
	public static String basePath = "http://api.aspose.cloud/v1.1";
    public static String resourceURL =  "/slides/sample.pptx/slides/1/?appSid={appSid}";
    
    
    
    
   
	public static void main(String[] argv) {


		resourceURL = resourceURL.replace("{appSid}",APP_SID);
		resourceURL = resourceURL.replaceAll("\\{\\w*\\}", "");
		resourceURL = resourceURL.replaceAll("\\*", "").replace("&amp;", "&").replace("/?", "?").replace("toFormat={toFormat}", "format={format}");

		StringBuilder resourceURLBuilder = new StringBuilder(basePath).append(resourceURL);
		String signature = Sign(resourceURLBuilder.toString(), API_KEY);
		resourceURLBuilder.append("&signature=").append(signature);
		
		
		System.out.println(resourceURLBuilder);
	}

	public static String Sign(String unsignedURL, String privateKey) {

		try {

			Mac mac = Mac.getInstance(HMAC_SHA1_ALGORITHM);
			mac.init(new SecretKeySpec(privateKey.getBytes(), HMAC_SHA1_ALGORITHM));

			String signature = new String(Base64.getEncoder().encodeToString((mac.doFinal(unsignedURL.getBytes()))));

			if (signature.endsWith("=")) {
				signature = signature.substring(0, signature.length() - 1);
			}

			return URLEncoder.encode(signature, "UTF-8");

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (InvalidKeyException e) {
			e.printStackTrace();
		}

		return null;
	}

}