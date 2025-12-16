<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Add Car">

    <div class="row justify-content-center mt-5">
        <div class="col-md-6 col-lg-5"> <div class="card shadow-lg border-0 rounded-3">
            <div class="card-header bg-primary text-white p-4 rounded-top">
                <h3 class="mb-0 text-center">Add New Car</h3>
            </div>

            <div class="card-body p-4">
                <form class="needs-validation" method="POST" action="${pageContext.request.contextPath}/AddCar">

                    <div class="col-md-12 mb-3">
                        <label for="license_plate" class="form-label fw-bold">License Plate</label>
                        <input type="text" class="form-control form-control-lg" id="license_plate" name="license_plate" placeholder="e.g. SB 01 ABC" value="" required>
                        <div class="invalid-feedback">License plate is required.</div>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="parking_spot" class="form-label fw-bold">Parking Spot</label>
                        <input type="text" class="form-control form-control-lg" id="parking_spot" name="parking_spot" placeholder="e.g. Spot 10" value = "" required>
                        <div class="invalid-feedback">Parking spot is required.</div>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="userId" class="form-label fw-bold">Owner</label>
                        <select class="form-select form-select-lg" id="owner_id" name="owner_id" required>
                            <option value="" selected disabled>Choose an owner...</option>
                            <c:forEach var="user" items="${users}" varStatus="status">
                                <option value="${user.id}">${user.username}</option>
                            </c:forEach>
                        </select>
                        <div class="invalid-feedback">Please select an owner.</div>
                    </div>

                    <div class="d-grid gap-2">
                        <hr class = "mb-4">
                        <button class="btn btn-primary btn-lg" type="submit">Save Car</button>
                        <a href="${pageContext.request.contextPath}/Cars" class="btn btn-link text-decoration-none text-muted">Cancel</a>
                    </div>

                </form>
            </div>
        </div>

        </div>
    </div>

</t:pageTemplate>