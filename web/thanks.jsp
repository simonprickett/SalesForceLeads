<%@page import="com.netbiscuits.salesforce.LeadGenerator;" %>
<% LeadGenerator.generateLead(
        request.getParameter("firstName"), 
        request.getParameter("surname"), 
        request.getParameter("phone"), 
        request.getParameter("email"),
        request.getParameter("companyName"), 
        request.getParameter("industry"));
%>      
<?xml version="1.0" encoding="UTF-8"?>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<page xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" output-encoding="UTF-8" paging="true" title="Netbiscuits: Thanks for Registering" xsd-version="1.12" xsi:nonamespaceschemalocation="http://www.netbiscuits.com/schema/netbiscuits-1.12.xsd">
    <external type="css" file="stylesheet.css" />
    <container>
        <column>
            <jsp:include page="globalheader.jsp"/>
            <TEXT>
                <styles>
                    <style name="color" value="#666666"/>
                    <style name="bgcolor" value="#E2E2E2"/>
                    <style name="borders" value="both"/>
                    <style name="border-color" value="white"/>
                    <style name="border-width" value="2"/>
                </styles>
                <richtext>[b]Thank You![/b]</richtext>
            </TEXT>
            <TEXT>
                <styles>
                    <style name="color" value="#666666"/>
                    <style name="text-align" value="left"/>
                </styles>
                <richtext>[b][i]<%= request.getParameter("firstName")%>:[/i] Thanks for registering with Netbiscuits.[/b][br][br]We look forwards to discussing your mobile projects in the near future.[br][br]Meantime, why not sign up for a free and fully featured trial of our service at netbiscuits.com?</richtext>
            </TEXT>
            <SEPARATOR/>
            <jsp:include page="globalfooter.jsp"/>
        </column>
    </container>
</page>