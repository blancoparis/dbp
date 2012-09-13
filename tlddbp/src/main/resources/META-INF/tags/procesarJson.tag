<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="dbp" uri="http://dbp.com/basico/dbp" %>
<%@ attribute name="objeto" required="false" type="java.lang.Object" %>
${dbp:getJson(objeto)}

