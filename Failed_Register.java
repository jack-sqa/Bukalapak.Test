package bukalapak_test;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;


import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;


import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.remote.MobileCapabilityType;

public class Failed_Register {

	public static void main(String[] args) throws MalformedURLException, InterruptedException {
		
		DesiredCapabilities dc = new DesiredCapabilities();
		
		dc.setCapability(MobileCapabilityType.AUTOMATION_NAME, "Appium");
		
		dc.setCapability(MobileCapabilityType.PLATFORM_NAME, "Android");
		
		dc.setCapability(MobileCapabilityType.PLATFORM_VERSION, 9.0);
		
		dc.setCapability(MobileCapabilityType.DEVICE_NAME, "AOSP on IA Emulator");
		
		
		dc.setCapability("appPackage", "com.loginmodule.learning");
		
		dc.setCapability("appActivity", "com.loginmodule.learning.activities.LoginActivity");
		
		
		URL url = new URL("http://127.0.0.1:4723/wd/hub");
		
		AndroidDriver<WebElement> driver = new AndroidDriver<WebElement>(url, dc);
		
		Thread.sleep(5000);
		
		
		//Click Create One
		driver.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS);
		driver.findElementById("com.loginmodule.learning:id/textViewLinkRegister").click();
		
		
		//Input Name
		driver.findElementById("com.loginmodule.learning:id/textInputEditTextName").sendKeys("Machruk");
		
		//Input Invalid Email
		driver.findElementById("com.loginmodule.learning:id/textInputEditTextEmail").sendKeys("jacksqa.2020@gmail");
		
		//Input Password
		driver.findElementById("com.loginmodule.learning:id/textInputEditTextPassword").sendKeys("bukaaja");
		
		//Input Confirm Password
		driver.findElementById("com.loginmodule.learning:id/textInputEditTextConfirmPassword").sendKeys("bukaaja");
		
		//Click Register Button
		driver.findElementById("com.loginmodule.learning:id/appCompatButtonRegister").click();
		
		

	}

}
