

class dept{
  String? deptName;
  String? deptId;

  dept({this.deptName, this.deptId});

  factory dept.fromJson(Map<String, dynamic> json) {
    return dept(
      deptName: json['deptName'] as String?,
      deptId: json['deptId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'deptName': deptName,
      'deptId': deptId,
    };
  }}