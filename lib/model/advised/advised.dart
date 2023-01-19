class AdvisedData {
  String? sId;
  String? respondentTitle;
  String? anemiaStage;
  String? description;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  int? iV;

  AdvisedData(
      {this.sId,
      this.respondentTitle,
      this.anemiaStage,
      this.description,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.iV});

  AdvisedData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    respondentTitle = json['respondent_title'];
    anemiaStage = json['anemia_stage'];
    description = json['description'];
    isDeleted = json['isDeleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['respondent_title'] = this.respondentTitle;
    data['anemia_stage'] = this.anemiaStage;
    data['description'] = this.description;
    data['isDeleted'] = this.isDeleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
