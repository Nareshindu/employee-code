// package com.unibrain.service;

// import com.unibrain.entity.EmployeesDetails;
// import java.util.List;

// public interface EmployeesDetailsService {
//     List<EmployeesDetails> getAllEmployees();
//     EmployeesDetails saveEmployee(EmployeesDetails employee);
//     // EmployeesDetails getEmployeeById(int id);
//     EmployeesDetails getEmployeeByEmployeeId(String employeeId);
//     void deleteEmployee(int id);
// }



package com.unibrain.service;

import com.unibrain.entity.EmployeesDetails;
import java.util.List;

public interface EmployeesDetailsService {
    List<EmployeesDetails> getAllEmployees();
    EmployeesDetails saveEmployee(EmployeesDetails employee);
    EmployeesDetails getEmployeeById(int id);
    EmployeesDetails getEmployeeByEmployeeId(String employeeId);
    void deleteEmployee(int id);
}
