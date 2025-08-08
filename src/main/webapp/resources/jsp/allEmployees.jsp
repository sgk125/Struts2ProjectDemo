<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>All Employees</title>

<!-- Bootstrap 4 CSS -->
<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap 4 JS (includes Popper) -->
<script src="resources/assets/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container mt-5">
		<h2 class="mb-4 text-center">Employee List</h2>
		<div class="text-right mb-3">
			<button class="btn btn-success" data-toggle="modal"
				data-target="#employeeModal" onclick="openAddModal()">Add
				Employee</button>
		</div>

		<table class="table table-bordered table-hover table-striped">
			<thead class="thead-dark">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Salary</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="employeeList">
					<tr>
						<td><s:property value="id" /></td>
						<td><s:property value="name" /></td>
						<td><s:property value="email" /></td>
						<td><s:property value="salary" /></td>
						<td>
							<button class="btn btn-sm btn-primary"
								onclick="openUpdateModal('<s:property value="id"/>', 
                                                     '<s:property value="name"/>', 
                                                     '<s:property value="email"/>', 
                                                     '<s:property value="salary"/>')">Edit</button>
							<form action="deleteEmployee.action" method="post"
								style="display: inline;">
								<input type="hidden" name="empId" value="<s:property value='id'/>" />
								<button type="submit" class="btn btn-sm btn-danger">Delete</button>
							</form>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>

		<!-- Bootstrap 4 Modal -->
		<div class="modal fade" id="employeeModal" tabindex="-1" role="dialog"
			aria-labelledby="employeeModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="employeeModalLabel">Add / Update
							Employee</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="employeeForm" method="post">
							<input type="hidden" name="employee.id" id="empId" />

							<div class="mb-3">
								<label for="empName" class="form-label">Name</label> <input
									type="text" class="form-control" name="employee.name" id="empName" />
							</div>

							<div class="mb-3">
								<label for="empEmail" class="form-label">Email</label> <input
									type="email" class="form-control" name="employee.email" id="empEmail" />
							</div>

							<div class="mb-3">
								<label for="empSalary" class="form-label">Salary</label> <input
									type="text" class="form-control" name="employee.salary" id="empSalary" />
							</div>
						</form>


					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-primary"
							onclick="submitForm()">Save</button>
					</div>
				</div>
			</div>
		</div>

		<a href="${pageContext.request.contextPath}/home"
			class="btn btn-primary mt-3">Back to Home</a>
	</div>

	<script>
		function openAddModal() {
			$('#empId').val('');
			$('#empName').val('');
			$('#empEmail').val('');
			$('#empSalary').val('');
			$('#employeeForm').attr('action', 'addEmployee.action');
			$('#employeeModalLabel').text('Add Employee');
			$('#employeeModal').modal('show');
		}

		function openUpdateModal(id, name, email, salary) {
			$('#empId').val(id);
			$('#empName').val(name);
			$('#empEmail').val(email);
			$('#empSalary').val(salary);
			$('#employeeForm').attr('action', 'updateEmployee.action');
			$('#employeeModalLabel').text('Update Employee');
			$('#employeeModal').modal('show');
		}

		function submitForm() {
			$('#employeeForm').submit();
		}
	</script>

</body>
</html>
