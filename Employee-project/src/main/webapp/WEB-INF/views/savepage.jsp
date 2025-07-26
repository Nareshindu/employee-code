<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Save Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 700px;
            margin: auto;
            padding: 20px;
        }

        form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
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
            padding: 10px 20px;
            font-size: 16px;
            grid-column: span 2;
            cursor: pointer;
        }

        .error-msg {
            color: red;
            font-weight: bold;
            margin-bottom: 15px;
            grid-column: span 2;
        }
    </style>
</head>
<body>

<h2>Save New Employee</h2>

<c:if test="${not empty msg}">
    <div id="errorMsg" class="error-msg">${msg}</div>
</c:if>

<form action="${pageContext.request.contextPath}/save" method="post">
    <label for="employeeID">Employee ID</label>
    <input type="text" id="employeeID" readonly  name="employeeId" required 
           value="${employee.employeeId != null ? employee.employeeId : ''}">

    <label for="firstName">First Name</label>
    <input type="text" id="firstName" name="firstName" required
           value="${employee.firstName != null ? employee.firstName : ''}">

    <label for="lastName">Last Name</label>
    <input type="text" id="lastName" name="lastName" required
           value="${employee.lastName != null ? employee.lastName : ''}">

    <label for="gender">Gender</label>
    <select id="gender" name="gender" required>
        <option value="">-- Select --</option>
        <option value="Male" ${employee.gender == 'Male' ? 'selected' : ''}>Male</option>
        <option value="Female" ${employee.gender == 'Female' ? 'selected' : ''}>Female</option>
        <option value="Other" ${employee.gender == 'Other' ? 'selected' : ''}>Other</option>
    </select>

    <label for="dateOfBirth">Date of Birth</label>
    <input type="date" id="dateOfBirth" name="dateOfBirth"
           value="${employee.dateOfBirth != null ? employee.dateOfBirth : ''}">

    <label for="email">Email</label>
    <input type="email" id="email" name="email" value="${employee.email != null ? employee.email : ''}">

    <label for="phoneNumber">Phone Number</label>
    <input type="text" id="phoneNumber" name="phoneNumber" value="${employee.phoneNumber != null ? employee.phoneNumber : ''}">

    <label for="address" class="full-width">Address</label>
    <input type="text" id="address" name="address" class="full-width" value="${employee.address != null ? employee.address : ''}">

    <label for="role">Role</label>
    <input type="text" id="role" name="role" value="${employee.role != null ? employee.role : ''}">

    <label for="jobTitle">Job Title</label>
    <input type="text" id="jobTitle" name="jobTitle" value="${employee.jobTitle != null ? employee.jobTitle : ''}">

    <label for="department">Department</label>
    <input type="text" id="department" name="department" value="${employee.department != null ? employee.department : ''}">

    <label for="manager">Manager</label>
    <input type="text" id="manager" name="manager" value="${employee.manager != null ? employee.manager : ''}">

    <label for="employmentType">Employment Type</label>
    <select id="employmentType" name="employmentType">
        <option value="">-- Select --</option>
        <option value="Full-Time" ${employee.employmentType == 'Full-Time' ? 'selected' : ''}>Full-Time</option>
        <option value="Part-Time" ${employee.employmentType == 'Part-Time' ? 'selected' : ''}>Part-Time</option>
        <option value="Contract" ${employee.employmentType == 'Contract' ? 'selected' : ''}>Contract</option>
    </select>

    <label for="hireDate">Hire Date</label>
    <input type="date" id="hireDate" name="hireDate" value="${employee.hireDate != null ? employee.hireDate : ''}">

    <button type="submit">Save Employee</button>
</form>

<script>
    // Hide error message when user modifies Employee ID input
    const empIdInput = document.getElementById('employeeID');
    const errorMsg = document.getElementById('errorMsg');

    if (empIdInput && errorMsg) {
        empIdInput.addEventListener('input', () => {
            errorMsg.style.display = 'none';
        });
    }
</script>

</body>
</html>
