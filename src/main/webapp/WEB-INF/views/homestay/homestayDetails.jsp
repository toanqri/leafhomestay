<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<link href="<spring:url value="/resource/css/homestay-details.css"/>" type="text/css" rel="stylesheet">

<body>
<div class="cover">
    <img src="<spring:url value="${homestay.coverImage}"/>" alt="cover">
</div>
<div class="content">
    <div id="information">
        <div>
            <h2>${homestay.title}</h2>
            <c:if test="${not empty homestay.address}">
                <p class="address">
                        ${homestay.address.street}, ${homestay.address.city}, ${homestay.address.state} ${homestay.address.zipCode}
                </p>
            </c:if>
            <p class="type">${homestay.homestayType.name}</p>
            <p id="overview">${homestay.overview}</p>
        </div>

        <div>
            <h3>Amenities</h3>
            <p>Amenities and services at the accommodation</p>
        </div>
    </div>
    <div id="booking-container">
        <h3>100$/2 nights</h3>
        <form:form modelAttribute="booking" action="booking" method="post">
            <div>
                <form:input id="dateFrom" class="date" path="dateFrom" type="date"/>
                <form:input id="dateFrom" class="date" path="dateTo" type="date"/>
            </div>
            <form:input id="numberOfGuest" class="numberOfGuest" path="numberOfGuest" type="text"/>
            <div>
                <input type="submit" value="Book Now">
            </div>
        </form:form>
    </div>
</div>
</body>
</html>