

class person {
  final int id;
  final String employee_name;
  final int employee_salary;
  final int employee_age;
  final String profile_image;

  person(
      {this.id,
      this.employee_name,
      this.employee_salary,
      this.employee_age,
      this.profile_image});

  factory person.fromJson(Map<String, dynamic> json) {
    return person(
        id: json["id"],
        employee_name: json["employee_name"],
        employee_salary: json["employee_salary"],
        employee_age: json["employee_age"],
        profile_image: json["profile_image"]);
  }
}
