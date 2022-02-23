<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:main-layout>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
                <c:if test="${position != null}">
                <form action="positionEdit" method="post">
                    </c:if>
                    <c:if test="${position == null}">
                    <form action="positionCreate" method="post">
                        </c:if>
                        <caption>
                            <h2>
                                <c:if test="${position != null}">
                                    Редактирование информации о должности
                                </c:if>
                                <c:if test="${position == null}">
                                    Добавление новой должности
                                </c:if>
                            </h2>
                        </caption>
                        <c:if test="${position != null}">
                            <input type="hidden" name="id" value="${position.id}" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>Название</label>
                            <input type="text" value="${position.title}" class="form-control" name="title" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Минимальная ЗП</label>
                            <input type="number" value="${position.minSalary}" class="form-control" name="minSalary">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Максимальная ЗП</label>
                            <input type="number" value="${position.maxSalary}" class="form-control" name="maxSalary">
                        </fieldset>


                        <button type="submit" class="btn btn-success">Save</button>
                    </form>
            </div>
        </div>
    </div>
</t:main-layout>
