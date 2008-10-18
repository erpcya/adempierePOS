<%--
 *  Product: Posterita Web-Based POS and Adempiere Plugin
 *  Copyright (C) 2007  Posterita Ltd
 *  This file is part of POSterita
 *  
 *  POSterita is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License along
 *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * @author tamak
--%>

<%@ page import="org.posterita.Constants" %>
<%@ page import="org.posterita.user.*" %>

<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>	
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>	

<logic:notPresent name="<%=WebUserInfo.NAME%>" scope="session">
	<jsp:forward page="/LoginHome.do"/>
</logic:notPresent>


<tiles:insert page="/jsp/include/headerTableTop.jsp">
  	<tiles:put name="title"><bean:message key="admin.changeEmail.title"/></tiles:put>
</tiles:insert>
 <%@ include file="/jsp/include/tabTop.jsp" %><bean:message key="admin.changeEmail.title"/><%@ include file="/jsp/include/tabBottom.jsp" %>
		<table width="100%" border="0" cellpadding="5" cellspacing="1" align="center">
			<tr>
				<td> 
					
				</td>
			</tr>
				
			<tr>
				<td>				  			
					<html:form action="/ChangeEmailAction">
					<html:hidden property="action" value="<%=Constants.CHANGE%>"/>
						
						<table align="center" width="350" border="0" cellpadding="5" cellspacing="0" cols="2">
							<tr>
							<%@ include file="/jsp/include/errors.jsp" %>
								<td><font class="bolddarkgraysmall"><bean:message key="admin.changeEmail.oldEmail"/></font></td>
								<td><c:out value='${webUserInfo.user.email}'/></td>
							</tr>
							<tr>
								<td colspan="1" nowrap><font class="bolddarkgraysmall"><bean:message key="admin.changeEmail.newEmail"/></font></td>
								<td colspan="1"><html:text property="newEmail" size="30"/></td>
							</tr>
							<tr>
								<td colspan="1" nowrap><font class="bolddarkgraysmall"><bean:message key="admin.changeEmail.confirmEmail"/></font></td>
								<td colspan="1"><html:text property="confirmEmail" size="30"/></td>
							</tr>
							<tr>
								<td colspan="2" align="right">
									<html:submit styleClass="button"><bean:message key="button.submit"/></html:submit>
								</td>
							</tr>
						</table>
					
					</html:form> 
			
				</td>
			</tr>
		</table>	    		
	    
	    <%@ include file="/jsp/include/footerTableBottom.jsp" %>				