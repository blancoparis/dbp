<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="id" required="true"%>
<%@ attribute name="type" required="true"%>
<%@ attribute name="label" required="true" rtexprvalue="true" %>
<%@ attribute name="title"%>
<%@ attribute name="titleLabel"%>
<%@ attribute name="requiered"%>
<%@ attribute name="value"%>
<%@ attribute name="classLabel"%>
<%@ attribute name="classInput"%>
<%@ attribute name="readonly"%>
<%-- La clase del label --%>
<c:choose>
	<c:when test="${classLabel !='' }">
		<c:set var="claseEtiqueta" value="class='${classLabel}'" />
	</c:when>
	<c:otherwise>
		<c:set var="claseEtiqueta" value="" />
	</c:otherwise>
</c:choose>
<%-- La clase del input --%>
<c:choose>
	<c:when test="${classInput !='' }">
		<c:set var="claseInput" value="class='${classInput}'" />
	</c:when>
	<c:otherwise>
		<c:set var="claseInput" value="" />
	</c:otherwise>
</c:choose>
<%-- El requerido --%>
<c:choose>
	<c:when test="${requiered =='true'}">
		<c:set var="textoLabelRequerido" value="(*)" />
		<c:set var="validaciones" value="required" />
	</c:when>
	<c:otherwise>
		<c:set var="textoLabelRequerido" value="" />
		<c:set var="validaciones" value="" />
	</c:otherwise>
</c:choose>


<div class="_25">
	<label id="etiqueta_${id}" for="${id}" title="${titleLabel}" ${claseEtiqueta} >
		${label}${textoLabelRequerido}: </label>
</div>
<div class="_25L">
	<c:choose>
		<c:when test="${readonly =='true'}">
			${value}
		</c:when>
		<c:otherwise>
		<input ${classInput} ${validaciones} id="${id}" type="${type}" name="${id}" title="${title}"
		value="${value}" />
		</c:otherwise>
	</c:choose>
	
		
</div>