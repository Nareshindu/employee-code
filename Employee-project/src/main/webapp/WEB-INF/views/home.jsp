<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 40px;
            background-color: #f0f0f0;
        }

        h2 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        a.button {
            padding: 8px 16px;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            cursor: pointer;
            display: inline-block;
        }

        a.button:hover {
            opacity: 0.9;
        }

        .add-btn {
            background-color: green;
        }

        .delete-btn {
            background-color: red;
        }

        .edit-btn {
            background-color: orange;
        }

        /* Modal styles */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Sit on top */
            z-index: 9999; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; 
            height: 100%; 
            overflow: auto; 
            background-color: rgba(0,0,0,0.5); /* Black with opacity */
        }

        .modal-content {
            background-color: #fff;
            margin: 15% auto; /* 15% from top, centered horizontally */
            padding: 20px;
            border-radius: 8px;
            width: 350px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            text-align: center;
        }

        .modal-buttons {
            margin-top: 20px;
            display: flex;
            justify-content: space-around;
        }

        .modal-buttons button {
            padding: 8px 20px;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }

        .btn-confirm {
            background-color: #28a745;
            color: white;
        }

        .btn-cancel {
            background-color: #dc3545;
            color: white;
        }
    </style>
</head>
<body>

<h2>Employee List</h2>
<a href="${pageContext.request.contextPath}/add" class="button add-btn">Add New Employee</a>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Emp ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Phone</th>
            <th>Address</th>
            <th>DOB</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${employees}" var="emp">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.employeeId}</td>
                <td>${emp.employeeName}</td>
                <td>${emp.gender}</td>
                <td>${emp.phoneNumber}</td>
                <td>${emp.address}</td>
                <td>${emp.dateOfBirth}</td>
                <td>
                    <a href="#" 
                       class="button edit-btn" 
                       onclick="openModal('edit', '${pageContext.request.contextPath}/edit/${emp.id}')">Edit</a>
                    <a href="#" 
                       class="button delete-btn" 
                       onclick="openModal('delete', '${pageContext.request.contextPath}/delete/${emp.id}')">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<!-- Modal HTML -->
<div id="confirmationModal" class="modal">
    <div class="modal-content">
        <p id="modalMessage">Do you want to proceed?</p>
        <div class="modal-buttons">
            <button id="confirmBtn" class="btn-confirm">Yes</button>
            <button id="cancelBtn" class="btn-cancel">No</button>
        </div>
    </div>
</div>

<script>
    const modal = document.getElementById('confirmationModal');
    const modalMessage = document.getElementById('modalMessage');
    const confirmBtn = document.getElementById('confirmBtn');
    const cancelBtn = document.getElementById('cancelBtn');

    let actionUrl = '';
    
    function openModal(actionType, url) {
        actionUrl = url;
        if(actionType === 'edit') {
            modalMessage.textContent = 'Do you want to edit this employee?';
        } else if(actionType === 'delete') {
            modalMessage.textContent = 'Do you want to delete this employee?';
        }
        modal.style.display = 'block';
    }

    confirmBtn.onclick = function() {
        modal.style.display = 'none';
        // redirect to the link (edit/delete)
        window.location.href = actionUrl;
    }

    cancelBtn.onclick = function() {
        modal.style.display = 'none';
        actionUrl = '';
    }

    // Close modal if user clicks outside modal content
    window.onclick = function(event) {
        if(event.target == modal) {
            modal.style.display = 'none';
            actionUrl = '';
        }
    }
</script>

</body>
</html>
