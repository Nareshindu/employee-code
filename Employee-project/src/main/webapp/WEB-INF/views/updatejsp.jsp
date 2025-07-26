<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Update Employee</title>
    <style>
        form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
            max-width: 800px;
            margin: auto;
        }

        label {
            font-weight: bold;
        }

        input, select {
            padding: 8px;
            width: 100%;
            box-sizing: border-box;
        }

        .full-width {
            grid-column: span 2;
        }

        button {
            padding: 10px;
            font-size: 16px;
            grid-column: span 2;
        }

        .error {
            color: red;
            grid-column: span 2;
        }
    </style>
</head>
<body>

<h2 style="text-align: center;">Update Employee Details</h2>

<form:form method="POST" action="/updatejsp" modelAttribute="employee">
    <form:hidden path="id"/>

    <c:if test="${not empty msg}">
        <div class="error">${msg}</div>
    </c:if>

    <label>Employee ID</label>
    <form:input path="employeeId" />

    <label>First Name</label>
    <form:input path="firstName" />

    <label>Last Name</label>
    <form:input path="lastName" />

    <label>Gender</label>
    <form:select path="gender">
        <form:option value="">-- Select --</form:option>
        <form:option value="Male">Male</form:option>
        <form:option value="Female">Female</form:option>
        <form:option value="Other">Other</form:option>
    </form:select>

    <label>Date of Birth</label>
    <form:input path="dateOfBirth" type="date"/>

    <label>Email</label>
    <form:input path="email"/>

    <label>Phone Number</label>
    <form:input path="phoneNumber"/>

    <label for="address" class="full-width">Address</label>
    <form:input path="address" class="full-width"/>

    <label>Role</label>
    <form:input path="role"/>

    <label>Job Title</label>
    <form:input path="jobTitle"/>

    <label>Department</label>
    <form:input path="department"/>

    <label>Manager</label>
    <form:input path="manager"/>

    <label>Employment Type</label>
    <form:select path="employmentType">
        <form:option value="">-- Select --</form:option>
        <form:option value="Full-Time">Full-Time</form:option>
        <form:option value="Part-Time">Part-Time</form:option>
        <form:option value="Contract">Contract</form:option>
    </form:select>

    <label>Hire Date</label>
    <form:input path="hireDate" type="date"/>

    <label>Employee Name (auto)</label>
    <form:input path="employeeName" readonly="true" />

    <button type="submit">Update Employee</button>
</form:form>

</body>
</html>
