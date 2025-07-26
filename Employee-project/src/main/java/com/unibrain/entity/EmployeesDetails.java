package com.unibrain.entity;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Objects;

@Entity
@Table(name = "employees_details")
public class EmployeesDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "employee_id", nullable = false, unique = true)
    private String employeeId;

    private String address;
    private String employeeName;
    private String firstName;
    private String role;
    private LocalDate dateOfBirth;
    private String department;
    private String email;
    private String employmentType;
    private String gender;
    private LocalDate hireDate;
    private String jobTitle;
    private String lastName;
    private String manager;
    private String phoneNumber;

    // No-arg constructor for JPA
    public EmployeesDetails() {}

    // All-args constructor (excluding id for creation scenarios)
    public EmployeesDetails(String employeeId, String address, String employeeName, String role,
                            LocalDate dateOfBirth, String department, String email, String employmentType,
                            String gender, LocalDate hireDate, String jobTitle, String lastName,
                            String manager, String phoneNumber) {
        this.employeeId = employeeId;
        this.address = address;
        this.employeeName = employeeName;
        this.role = role;
        this.dateOfBirth = dateOfBirth;
        this.department = department;
        this.email = email;
        this.employmentType = employmentType;
        this.gender = gender;
        this.hireDate = hireDate;
        this.jobTitle = jobTitle;
        this.lastName = lastName;
        this.manager = manager;
        this.phoneNumber = phoneNumber;
    }

    // Getters and Setters

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }
    public String getFirstName() {
    return firstName;
    }

    public void setFirstName(String firstName) {
    this.firstName = firstName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmploymentType() {
        return employmentType;
    }

    public void setEmploymentType(String employmentType) {
        this.employmentType = employmentType;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDate getHireDate() {
        return hireDate;
    }

    public void setHireDate(LocalDate hireDate) {
        this.hireDate = hireDate;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    // toString method for debugging

    @Override
    public String toString() {
        return "EmployeesDetails{" +
                "id=" + id +
                ", employeeId='" + employeeId + '\'' +
                ", address='" + address + '\'' +
                ", employeeName='" + employeeName + '\'' +
                ", role='" + role + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", department='" + department + '\'' +
                ", email='" + email + '\'' +
                ", employmentType='" + employmentType + '\'' +
                ", gender='" + gender + '\'' +
                ", hireDate=" + hireDate +
                ", jobTitle='" + jobTitle + '\'' +
                ", lastName='" + lastName + '\'' +
                ", manager='" + manager + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                '}';
    }

    // equals and hashCode based on id and employeeId

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof EmployeesDetails)) return false;
        EmployeesDetails that = (EmployeesDetails) o;
        return Objects.equals(id, that.id) &&
               Objects.equals(employeeId, that.employeeId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, employeeId);
    }
}
