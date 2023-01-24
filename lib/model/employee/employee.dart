class EmployeeData {
  String? sId;
  String? employeeName;
  String? fullName;
  String? mobile;
  String? district;
  String? blockName;
  String? password;
  String? role;
  String? villageName;
  String? anganwadiCenter;
  String? subCenter;
  String? status;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  int? iV;

  EmployeeData(
      {this.sId,
      this.employeeName,
      this.fullName,
      this.mobile,
      this.district,
      this.blockName,
      this.password,
      this.role,
      this.villageName,
      this.anganwadiCenter,
      this.subCenter,
      this.status,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.iV});

  EmployeeData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    employeeName = json['employee_name'];
    fullName = json['full_name'];
    mobile = json['mobile'];
    district = json['district'];
    blockName = json['block_name'];
    password = json['password'];
    role = json['role'];
    villageName = json['village_name'];
    anganwadiCenter = json['anganwadi_center'];
    subCenter = json['sub_center'];
    status = json['status'];
    isDeleted = json['isDeleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['employee_name'] = this.employeeName;
    data['full_name'] = this.fullName;
    data['mobile'] = this.mobile;
    data['district'] = this.district;
    data['block_name'] = this.blockName;
    data['password'] = this.password;
    data['role'] = this.role;
    data['village_name'] = this.villageName;
    data['anganwadi_center'] = this.anganwadiCenter;
    data['sub_center'] = this.subCenter;
    data['status'] = this.status;
    data['isDeleted'] = this.isDeleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
