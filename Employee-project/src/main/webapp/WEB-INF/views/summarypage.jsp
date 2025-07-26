<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
    table {
        width: 100%;
        border-collapse: collapse;
        font-family: Arial, sans-serif;
        margin-top: 20px;
    }

    th, td {
        padding: 12px;
        text-align: left;
        border: 1px solid #ddd;
    }

    thead {
        background-color: #007bff;
        color: white;
    }

    tbody tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tbody tr:hover {
        background-color: #f1f1f1;
    }

    .register-button {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #28a745;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-weight: bold;
        font-size: 16px;
    }

    .register-button:hover {
        background-color: #218838;
    }
</style>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Role</th>
            <th>Job Title</th>
            <th>Department</th>
            <th>Manager</th>
            <th>Employment Type</th>
            <th>Hire Date</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="employee" items="${employees}">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.employeeID}</td>
                <td>${employee.firstName} ${employee.lastName}</td>
                <td>${employee.gender}</td>
                <td>${employee.dateOfBirth}</td>
                <td>${employee.email}</td>
                <td>${employee.phoneNumber}</td>
                <td>${employee.address}</td>
                <td>${employee.role}</td>
                <td>${employee.jobTitle}</td>
                <td>${employee.department}</td>
                <td>${employee.manager}</td>
                <td>${employee.employmentType}</td>
                <td>${employee.hireDate}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<!-- Styled button link -->
<div>
    <a href="${pageContext.request.contextPath}/employeecontroller/register" class="register-button">
        Click Here To Register
    </a>
</div>
<div>
    <a href="${pageContext.request.contextPath}/employeecontroller/home" class="register-button">
        Home Page
    </a>
</div>
