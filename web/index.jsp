<?xml version="1.0" encoding="UTF-8"?>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<page xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" output-encoding="UTF-8" paging="true" title="Netbiscuits: Register With Us" xsi:nonamespaceschemalocation="http://www.netbiscuits.com/schema/netbiscuits.xsd">
    <external type="script" file="validateform.js" />
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
                <richtext>[b]Register With Us[/b]</richtext>
            </TEXT>
            <TEASER behavior="">
                <styles>
                    <style name="color" value="#666666"/>
                    <style name="text-align" value="left"/>
                </styles>
                <img convert="true" src="pics/ic_80x80_conditions.jpg" width="20"/>
                <richtext>Use the form below to register your interest in the Netbiscuits platform, and one of our sales representatives from our closest office will be sure to follow up with you to discuss your mobile projects.</richtext>
            </TEASER>
            <TEXT id="formErrors">
                <styles>
                    <style name="biscuit-padding" value="2px"/>
                    <style name="color" value="#FF0000"/>
                </styles>
                <richtext/>
            </TEXT>
            <FORM action="clickto" method="POST">
                <styles>
                    <style name="padding" value="2px"/>
                </styles>
                <input name="recipient" type="hidden"/>
                <input name="nbAction" type="hidden"/>
                <input name="nbActionLogging" type="hidden" value="false"/>
                <input name="successPage" type="hidden" value="thanks.jsp"/>
                <input name="errorPage" type="hidden" value="index.jsp"/>
                <row>
                    <cell>
                        <error name="firstName">[color='#FF0000]Please enter your first name.[/color][br]</error>
                        <error name="surname">[color='#FF0000]Please enter your surname.[/color][br]</error>
                        <error name="phone">[color='#FF0000]Please enter your phone number.[/color][br]</error>
                        <error name="email">[color='#FF0000]Please enter your email address.[/color][br]</error>
                        <error name="companyName">[color='#FF0000]Please enter your company name.[/color][br]</error>
                        <richtext>[br]</richtext>
                    </cell>
                </row>
                <row>
                    <cell>
                        <text>First Name:</text>
                    </cell>
                </row>
                <row>
                    <cell>
                        <input autocapitalize="on" autofocus="on" maxlength="30" name="firstName" required="true" type="text"/>
                    </cell>
                </row>
                <row>
                    <cell>
                        <text>Surname:</text>
                    </cell>
                </row>
                <row>
                    <cell>
                        <input autocapitalize="on" maxlength="30" name="surname" required="true" type="text"/>
                    </cell>
                </row>
                <row>
                    <cell>
                        <text>Phone:</text>
                    </cell>
                </row>
                <row>
                    <cell>
                        <input format="*N" name="phone" required="true" type="tel"/>
                    </cell>
                </row>
                <row>
                    <cell>
                        <text>Email:</text>
                    </cell>
                </row>
                <row>
                    <cell>
                        <input autocapitalize="off" maxlength="50" name="email" required="true" type="email"/>
                    </cell>
                </row>
                <row>
                    <cell>
                        <text>Company:</text>
                    </cell>
                </row>
                <row>
                    <cell>
                        <input autocapitalize="on" maxlength="50" name="companyName" required="true" type="text"/>
                    </cell>
                </row>
                <richtext>[br]</richtext>
                <row>
                    <cell>
                        <text>Industry:</text>
                    </cell>
                </row>
                <row>
                    <cell>
                        <input name="industry" required="true" type="select">
                            <option selected="selected" value="Unspecified"/>
                            <option value="Manufacturing">Manufacturing</option>
                            <option value="Retail">Retail</option>
                            <option value="Publishing">Publishing</option>
                            <option value="Technology">Technology</option>
                            <option value="Consulting">Consulting</option>
                            <option value="Other">Other</option>
                        </input>
                    </cell>
                </row>
                <richtext>[br]</richtext>
                <row>
                    <cell align="center">
                        <input name="nbSubmit" type="submit" value="Submit"/>                 
                    </cell>
                </row>
            </FORM>
            <jsp:include page="globalfooter.jsp"/>
        </column>
    </container>
</page>
