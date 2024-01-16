class EmployeeModel{
  final int? id;
  final String name;
  final String designation;

  const EmployeeModel({required this.name, required this.designation, this.id});

  factory EmployeeModel.fromJson(Map<String,dynamic> json) => EmployeeModel(
      id: json['id'],
      name: json['name'],
      designation: json['designation']
  );

  Map<String,dynamic> toJson() => {
    'id': id,
    'name': name,
    'designation': designation
  };
}