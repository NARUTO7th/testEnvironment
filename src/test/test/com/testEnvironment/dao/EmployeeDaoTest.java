package test.com.testEnvironment.dao; 

import com.testEnvironment.dao.EmployeeDao;
import com.testEnvironment.pojo.Employee;
import org.junit.Assert;
import org.junit.Test;
import org.junit.Before; 
import org.junit.After;

import java.sql.Date;
import java.util.List;

/** 
* EmployeeDao Tester. 
* 
* @author <Authors name> 
* @since <pre>07/22/2020</pre> 
* @version 1.0 
*/ 
public class EmployeeDaoTest { 

@Before
public void before() throws Exception { 
} 

@After
public void after() throws Exception { 
} 

/** 
* 
* Method: findEmployeeByNameAndPwd(String name, String password) 
* 
*/ 
@Test
public void testFindEmployeeByNameAndPwd() throws Exception { 
//TODO: Test goes here...
    EmployeeDao employeeDao = new EmployeeDao ();
    Employee david = employeeDao.findEmployeeByNameAndPwd ("david", "123456");
    //String e_no = david.getE_no ();
    double r = david.getSalary ();
    Assert.assertEquals (11000,r,0);
} 

/** 
* 
* Method: findEmployees() 
* 
*/ 
@Test
public void testFindEmployees() throws Exception { 
//TODO: Test goes here...
    EmployeeDao employeeDao = new EmployeeDao ();
    List<Employee> employees = employeeDao.findEmployees ();
    boolean result = employees.isEmpty ();
    Assert.assertEquals (false,result);

} 

/** 
* 
* Method: addEmployee(String e_no, String name, String password, Date birthday, double salary) 
* 
*/ 
@Test
public void testAddEmployee() throws Exception { 
//TODO: Test goes here...
    EmployeeDao employeeDao = new EmployeeDao ();
    boolean ddtt = employeeDao.addEmployee ("444", "ddtt", "123456", Date.valueOf ("1999-04-09"), 60000);
    Assert.assertEquals (true,ddtt);
} 

/** 
* 
* Method: deleteEById(int id) 
* 
*/ 
@Test
public void testDeleteEById() throws Exception { 
//TODO: Test goes here...
    EmployeeDao employeeDao = new EmployeeDao ();
    boolean result = employeeDao.deleteEById (22);
    Assert.assertEquals (true,result);
} 

/** 
* 
* Method: findEmployeeById(int id) 
* 
*/ 
@Test
public void testFindEmployeeById() throws Exception { 
//TODO: Test goes here...
    EmployeeDao employeeDao = new EmployeeDao ();
    Employee employeeById = employeeDao.findEmployeeById (21);
    String name = employeeById.getName ();
    Assert.assertEquals ("david",name);
} 

/** 
* 
* Method: updateEmployee(Employee employee) 
* 
*/ 
@Test
public void testUpdateEmployee() throws Exception { 
//TODO: Test goes here...
    int id = 21;
    String e_no = "666";
    String name = "david";
    String password = "123456";
    Date date = Date.valueOf ("1999-04-09");
    double salary = 88888.0;
    Employee employee = new Employee ();
    employee.setId (id);
    employee.setE_no (e_no);
    employee.setName (name);
    employee.setPassword (password);
    employee.setBirthday (date);
    employee.setSalary (salary);

    EmployeeDao employeeDao = new EmployeeDao ();
    boolean b = employeeDao.updateEmployee (employee);
    Assert.assertEquals (true,b);

} 


} 
