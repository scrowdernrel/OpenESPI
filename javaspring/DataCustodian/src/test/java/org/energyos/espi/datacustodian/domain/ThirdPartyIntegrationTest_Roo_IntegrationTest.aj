// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.energyos.espi.datacustodian.domain;

import org.energyos.espi.datacustodian.domain.ThirdPartyDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ThirdPartyIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ThirdPartyIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ThirdPartyIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: ThirdPartyIntegrationTest: @Transactional;
    
    @Autowired
    private ThirdPartyDataOnDemand ThirdPartyIntegrationTest.dod;
    
    @Test
    public void ThirdPartyIntegrationTest.testCountThirdPartys() {
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to initialize correctly", dod.getRandomThirdParty());
        long count = org.energyos.espi.datacustodian.domain.ThirdParty.countThirdPartys();
        org.junit.Assert.assertTrue("Counter for 'ThirdParty' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ThirdPartyIntegrationTest.testFindThirdParty() {
        org.energyos.espi.datacustodian.domain.ThirdParty obj = dod.getRandomThirdParty();
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to provide an identifier", id);
        obj = org.energyos.espi.datacustodian.domain.ThirdParty.findThirdParty(id);
        org.junit.Assert.assertNotNull("Find method for 'ThirdParty' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'ThirdParty' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ThirdPartyIntegrationTest.testFindAllThirdPartys() {
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to initialize correctly", dod.getRandomThirdParty());
        long count = org.energyos.espi.datacustodian.domain.ThirdParty.countThirdPartys();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'ThirdParty', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.energyos.espi.datacustodian.domain.ThirdParty> result = org.energyos.espi.datacustodian.domain.ThirdParty.findAllThirdPartys();
        org.junit.Assert.assertNotNull("Find all method for 'ThirdParty' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'ThirdParty' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ThirdPartyIntegrationTest.testFindThirdPartyEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to initialize correctly", dod.getRandomThirdParty());
        long count = org.energyos.espi.datacustodian.domain.ThirdParty.countThirdPartys();
        if (count > 20) count = 20;
        java.util.List<org.energyos.espi.datacustodian.domain.ThirdParty> result = org.energyos.espi.datacustodian.domain.ThirdParty.findThirdPartyEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'ThirdParty' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'ThirdParty' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ThirdPartyIntegrationTest.testFlush() {
        org.energyos.espi.datacustodian.domain.ThirdParty obj = dod.getRandomThirdParty();
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to provide an identifier", id);
        obj = org.energyos.espi.datacustodian.domain.ThirdParty.findThirdParty(id);
        org.junit.Assert.assertNotNull("Find method for 'ThirdParty' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyThirdParty(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'ThirdParty' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ThirdPartyIntegrationTest.testMerge() {
        org.energyos.espi.datacustodian.domain.ThirdParty obj = dod.getRandomThirdParty();
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to provide an identifier", id);
        obj = org.energyos.espi.datacustodian.domain.ThirdParty.findThirdParty(id);
        boolean modified =  dod.modifyThirdParty(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.energyos.espi.datacustodian.domain.ThirdParty merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'ThirdParty' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ThirdPartyIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to initialize correctly", dod.getRandomThirdParty());
        org.energyos.espi.datacustodian.domain.ThirdParty obj = dod.getNewTransientThirdParty(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'ThirdParty' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'ThirdParty' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ThirdPartyIntegrationTest.testRemove() {
        org.energyos.espi.datacustodian.domain.ThirdParty obj = dod.getRandomThirdParty();
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'ThirdParty' failed to provide an identifier", id);
        obj = org.energyos.espi.datacustodian.domain.ThirdParty.findThirdParty(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'ThirdParty' with identifier '" + id + "'", org.energyos.espi.datacustodian.domain.ThirdParty.findThirdParty(id));
    }
    
}
