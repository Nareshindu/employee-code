// package com.unibrain.repository;

// import com.unibrain.entity.EmployeesDetails;
// import org.springframework.data.jpa.repository.JpaRepository;

// public interface EmployeesDetailsRepository extends JpaRepository<EmployeesDetails, Integer> {
//     EmployeesDetails findByEmployeeId(String employeeId);  // <-- This is required
// }


package com.unibrain.repository;

import com.unibrain.entity.EmployeesDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface EmployeesDetailsRepository extends JpaRepository<EmployeesDetails, Integer> {
    EmployeesDetails findByEmployeeId(String employeeId); // If employeeId is unique

    // If not unique, use List version instead:
    // List<EmployeesDetails> findByEmployeeId(String employeeId);
}
