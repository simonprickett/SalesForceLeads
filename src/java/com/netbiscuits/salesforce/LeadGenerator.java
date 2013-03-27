package com.netbiscuits.salesforce;

import com.teamlazerbeez.crm.sf.soap.ConnectionPool;
import com.teamlazerbeez.crm.sf.soap.ConnectionPoolImpl;
import com.teamlazerbeez.crm.sf.soap.BindingConfig;
import com.teamlazerbeez.crm.sf.rest.RestConnection;
import com.teamlazerbeez.crm.sf.rest.RestConnectionPool;
import com.teamlazerbeez.crm.sf.rest.RestConnectionPoolImpl;
import com.teamlazerbeez.crm.sf.rest.RestSObjectImpl;
import com.teamlazerbeez.crm.sf.rest.SaveResult;
import com.teamlazerbeez.crm.sf.core.SObject;
import java.net.URL;

public class LeadGenerator {
    public static void generateLead(String firstName, String lastName, String phone, String email, String companyName, String industry) {
        System.out.println("generating lead");
        System.out.println(firstName);
        System.out.println(lastName);
        System.out.println(companyName);
        System.out.println(phone);
        System.out.println(email);
        System.out.println(industry);
        try {
            ConnectionPool<String> pool = new ConnectionPoolImpl<String>(Constants.SALESFORCE_PARTNER);
            pool.configureOrg(Constants.SALESFORCE_ORGID, Constants.SALESFORCE_USER, Constants.SALESFORCE_PASSWORD, 10);
            BindingConfig bindingConfig = pool.getConnectionBundle(Constants.SALESFORCE_ORGID).getBindingConfig();
            
            String host = new URL(bindingConfig.getPartnerServerUrl()).getHost();
            String token = bindingConfig.getSessionId();
            
            RestConnectionPool<String> restPool = new RestConnectionPoolImpl<String>();
            restPool.configureOrg(Constants.SALESFORCE_ORGID, host, token);

            RestConnection connection = restPool.getRestConnection(Constants.SALESFORCE_ORGID);

            SObject newLead = RestSObjectImpl.getNew("Lead");
            newLead.setField("FirstName", firstName);
            newLead.setField("LastName", lastName);
            newLead.setField("Company", companyName);
            newLead.setField("Email", email);
            newLead.setField("Phone", phone);
            newLead.setField("Industry", industry);
            newLead.setField("LeadSource", Constants.SALESFORCE_LEADSOURCE);
    
            SaveResult result = connection.create(newLead);
        } catch(Throwable t) {}
    }
}
