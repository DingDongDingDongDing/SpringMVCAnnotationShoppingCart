<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>   
 
 
<div class="menu-container">
  
   <a href="${pageContext.request.contextPath}/">Strona Glowna</a>
   |
   <a href="${pageContext.request.contextPath}/productList">
      Lista produktow
   </a>
   |
   <a href="${pageContext.request.contextPath}/shoppingCart">
      Moje zamowienia
   </a>
   |
   <security:authorize  access="hasAnyRole('ROLE_MANAGER','ROLE_EMPLOYEE')">
     <a href="${pageContext.request.contextPath}/orderList">
         Lista zamowien
     </a>
     |
   </security:authorize>
   
   <security:authorize  access="hasRole('ROLE_MANAGER')">
         <a href="${pageContext.request.contextPath}/product">
                        Dodaj produkt
         </a>
         |
   </security:authorize>
  
  <security:authorize  access="hasRole('ROLE_MANAGER')">
         <a href="${pageContext.request.contextPath}/mailSender">
                        Wyslij
         </a>
         |
   </security:authorize>
  
  
</div>