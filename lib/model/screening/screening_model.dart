import 'package:freezed_annotation/freezed_annotation.dart';

class ScreeningModel {
  String? sId;
  String? respondentName;
  String? screeningDate;
  String? typeOfRespondent;
  String? supportPersonType;
  String? supportPersonName;
  String? age;
  String? caste;
  String? gestAge;
  String? education;
  String? schoolStatus;
  String? typeOfSchool;
  String? schoolName;
  String? block;
  String? village;
  String? anganwadiCenter;
  String? subCenter;
  String? ashaName;
  String? anmName;
  String? weight;
  String? height;
  String? bmi;
  String? serviceQuestionOne;
  String? serviceQuestionTwo;
  String? serviceQuestionThree;
  String? serviceQuestionFour;
  String? statusQuestionOne;
  String? statusHblevel;
  String? statusQuestionTwo;
  String? statusQuestionThree;
  String? statusQuestionFour;
  String? advicesDescription;
  String? bloodTransfusionCenter;
  String? bloodTransfusionDate;
  String? screeningPersonName;
  String? screeningPersonDesgination;
  String? screeningNo;
  String? extraNote;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  int? iV;

  ScreeningModel(
      {this.sId,
      this.respondentName,
      this.screeningDate,
      this.typeOfRespondent,
      this.supportPersonType,
      this.supportPersonName,
      this.age,
      this.caste,
      this.gestAge,
      this.education,
      this.schoolStatus,
      this.typeOfSchool,
      this.schoolName,
      this.block,
      this.village,
      this.anganwadiCenter,
      this.subCenter,
      this.ashaName,
      this.anmName,
      this.weight,
      this.height,
      this.bmi,
      this.serviceQuestionOne,
      this.serviceQuestionTwo,
      this.serviceQuestionThree,
      this.serviceQuestionFour,
      this.statusQuestionOne,
      this.statusHblevel,
      this.statusQuestionTwo,
      this.statusQuestionThree,
      this.statusQuestionFour,
      this.advicesDescription,
      this.bloodTransfusionCenter,
      this.bloodTransfusionDate,
      this.screeningPersonName,
      this.screeningPersonDesgination,
      this.screeningNo,
      this.extraNote,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.iV});

  ScreeningModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    respondentName = json['respondent_name'];
    screeningDate = json['screening_date'];
    typeOfRespondent = json['type_of_respondent'];
    supportPersonType = json['support_person_type'];
    supportPersonName = json['support_person_name'];
    age = json['age'];
    caste = json['caste'];
    gestAge = json['gest_age'];
    education = json['education'];
    schoolStatus = json['school_status'];
    typeOfSchool = json['type_of_school'];
    schoolName = json['school_name'];
    block = json['block'];
    village = json['village'];
    anganwadiCenter = json['anganwadi_center'];
    subCenter = json['sub_center'];
    ashaName = json['asha_name'];
    anmName = json['anm_name'];
    weight = json['weight'];
    height = json['height'];
    bmi = json['bmi'];
    serviceQuestionOne = json['service_question_one'];
    serviceQuestionTwo = json['service_question_two'];
    serviceQuestionThree = json['service_question_three'];
    serviceQuestionFour = json['service_question_four'];
    statusQuestionOne = json['status_question_one'];
    statusHblevel = json['status_hblevel'];
    statusQuestionTwo = json['status_question_two'];
    statusQuestionThree = json['status_question_three'];
    statusQuestionFour = json['status_question_four'];
    advicesDescription = json['advices_description'];
    bloodTransfusionCenter = json['blood_transfusion_center'];
    bloodTransfusionDate = json['blood_transfusion_date'];
    screeningPersonName = json['screening_person_name'];
    screeningPersonDesgination = json['screening_person_desgination'];
    screeningNo = json['screening_no'];
    extraNote = json['extra_note'];
    isDeleted = json['isDeleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['respondent_name'] = this.respondentName;
    data['screening_date'] = this.screeningDate;
    data['type_of_respondent'] = this.typeOfRespondent;
    data['support_person_type'] = this.supportPersonType;
    data['support_person_name'] = this.supportPersonName;
    data['age'] = this.age;
    data['caste'] = this.caste;
    data['gest_age'] = this.gestAge;
    data['education'] = this.education;
    data['school_status'] = this.schoolStatus;
    data['type_of_school'] = this.typeOfSchool;
    data['school_name'] = this.schoolName;
    data['block'] = this.block;
    data['village'] = this.village;
    data['anganwadi_center'] = this.anganwadiCenter;
    data['sub_center'] = this.subCenter;
    data['asha_name'] = this.ashaName;
    data['anm_name'] = this.anmName;
    data['weight'] = this.weight;
    data['height'] = this.height;
    data['bmi'] = this.bmi;
    data['service_question_one'] = this.serviceQuestionOne;
    data['service_question_two'] = this.serviceQuestionTwo;
    data['service_question_three'] = this.serviceQuestionThree;
    data['service_question_four'] = this.serviceQuestionFour;
    data['status_question_one'] = this.statusQuestionOne;
    data['status_hblevel'] = this.statusHblevel;
    data['status_question_two'] = this.statusQuestionTwo;
    data['status_question_three'] = this.statusQuestionThree;
    data['status_question_four'] = this.statusQuestionFour;
    data['advices_description'] = this.advicesDescription;
    data['blood_transfusion_center'] = this.bloodTransfusionCenter;
    data['blood_transfusion_date'] = this.bloodTransfusionDate;
    data['screening_person_name'] = this.screeningPersonName;
    data['screening_person_desgination'] = this.screeningPersonDesgination;
    data['screening_no'] = this.screeningNo;
    data['extra_note'] = this.extraNote;
    data['isDeleted'] = this.isDeleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
