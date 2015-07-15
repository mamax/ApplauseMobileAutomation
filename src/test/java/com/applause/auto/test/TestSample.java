package com.applause.auto.test;

import org.testng.Assert;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import com.applause.auto.framework.test.BaseWebDriverTest;
import com.applause.auto.pageframework.testdata.TestConstants;

public class TestSample extends BaseWebDriverTest {


	@BeforeMethod(alwaysRun = true)
	public static void testSetup() {
	}

	@Test(groups = { TestConstants.TestNGGroups.REG }, description = "")
	public void testCorrectErrorMsgDisplayedWithMissingFirstName() {
	}


}
