// To parse this JSON data, do
//
//     final primeDbModel = primeDbModelFromJson(jsonString);

import 'dart:convert';

PrimeDbModel primeDbModelFromJson(String str) => PrimeDbModel.fromJson(json.decode(str));

String primeDbModelToJson(PrimeDbModel data) => json.encode(data.toJson());

class PrimeDbModel {
  DownloadInfo downloadInfo;
  List<SetFeedbackType> setFeedbackType;
  List<dynamic> setLogoutType;
  List<SecUser> secUsers;
  List<SecUserThana> secUserThana;
  List<SetClass> setClass;
  List<dynamic> setClientInfo;
  List<SetDivision> setDivision;
  List<SetExpType> setExpType;
  List<SetInstType> setInstType;
  List<Map<String, String?>> setInstitute;
  List<dynamic> setOrgType;
  List<SetPromoItem> setPromoItem;
  List<SetSpeciman> setSpecimen;
  List<SetSubject> setSubject;
  List<SetTeacherDesig> setTeacherDesig;
  List<dynamic> setTeacherInfo;
  List<SetThana> setThana;
  List<SetTransportType> setTransportType;
  List<dynamic> setWorkPurpose;
  List<SetZilla> setZilla;
  List<SetZone> setZone;
  List<dynamic> trnMsg;
  List<dynamic> trnUserPromoDet;
  List<dynamic> trnUserPromoItem;
  List<dynamic> trnUserSpecimen;
  List<dynamic> trnUserSpecimenDet;

  PrimeDbModel({
    required this.downloadInfo,
    required this.setFeedbackType,
    required this.setLogoutType,
    required this.secUsers,
    required this.secUserThana,
    required this.setClass,
    required this.setClientInfo,
    required this.setDivision,
    required this.setExpType,
    required this.setInstType,
    required this.setInstitute,
    required this.setOrgType,
    required this.setPromoItem,
    required this.setSpecimen,
    required this.setSubject,
    required this.setTeacherDesig,
    required this.setTeacherInfo,
    required this.setThana,
    required this.setTransportType,
    required this.setWorkPurpose,
    required this.setZilla,
    required this.setZone,
    required this.trnMsg,
    required this.trnUserPromoDet,
    required this.trnUserPromoItem,
    required this.trnUserSpecimen,
    required this.trnUserSpecimenDet,
  });

  factory PrimeDbModel.fromJson(Map<String, dynamic> json) => PrimeDbModel(
    downloadInfo: DownloadInfo.fromJson(json["download_info"]),
    setFeedbackType: List<SetFeedbackType>.from(json["SET_FEEDBACK_TYPE"].map((x) => SetFeedbackType.fromJson(x))),
    setLogoutType: List<dynamic>.from(json["SET_LOGOUT_TYPE"].map((x) => x)),
    secUsers: List<SecUser>.from(json["SEC_USERS"].map((x) => SecUser.fromJson(x))),
    secUserThana: List<SecUserThana>.from(json["SEC_USER_THANA"].map((x) => SecUserThana.fromJson(x))),
    setClass: List<SetClass>.from(json["SET_CLASS"].map((x) => SetClass.fromJson(x))),
    setClientInfo: List<dynamic>.from(json["SET_CLIENT_INFO"].map((x) => x)),
    setDivision: List<SetDivision>.from(json["SET_DIVISION"].map((x) => SetDivision.fromJson(x))),
    setExpType: List<SetExpType>.from(json["SET_EXP_TYPE"].map((x) => SetExpType.fromJson(x))),
    setInstType: List<SetInstType>.from(json["SET_INST_TYPE"].map((x) => SetInstType.fromJson(x))),
    setInstitute: List<Map<String, String?>>.from(json["SET_INSTITUTE"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
    setOrgType: List<dynamic>.from(json["SET_ORG_TYPE"].map((x) => x)),
    setPromoItem: List<SetPromoItem>.from(json["SET_PROMO_ITEM"].map((x) => SetPromoItem.fromJson(x))),
    setSpecimen: List<SetSpeciman>.from(json["SET_SPECIMEN"].map((x) => SetSpeciman.fromJson(x))),
    setSubject: List<SetSubject>.from(json["SET_SUBJECT"].map((x) => SetSubject.fromJson(x))),
    setTeacherDesig: List<SetTeacherDesig>.from(json["SET_TEACHER_DESIG"].map((x) => SetTeacherDesig.fromJson(x))),
    setTeacherInfo: List<dynamic>.from(json["SET_TEACHER_INFO"].map((x) => x)),
    setThana: List<SetThana>.from(json["SET_THANA"].map((x) => SetThana.fromJson(x))),
    setTransportType: List<SetTransportType>.from(json["SET_TRANSPORT_TYPE"].map((x) => SetTransportType.fromJson(x))),
    setWorkPurpose: List<dynamic>.from(json["SET_WORK_PURPOSE"].map((x) => x)),
    setZilla: List<SetZilla>.from(json["SET_ZILLA"].map((x) => SetZilla.fromJson(x))),
    setZone: List<SetZone>.from(json["SET_ZONE"].map((x) => SetZone.fromJson(x))),
    trnMsg: List<dynamic>.from(json["TRN_MSG"].map((x) => x)),
    trnUserPromoDet: List<dynamic>.from(json["TRN_USER_PROMO_DET"].map((x) => x)),
    trnUserPromoItem: List<dynamic>.from(json["TRN_USER_PROMO_ITEM"].map((x) => x)),
    trnUserSpecimen: List<dynamic>.from(json["TRN_USER_SPECIMEN"].map((x) => x)),
    trnUserSpecimenDet: List<dynamic>.from(json["TRN_USER_SPECIMEN_DET"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "download_info": downloadInfo.toJson(),
    "SET_FEEDBACK_TYPE": List<dynamic>.from(setFeedbackType.map((x) => x.toJson())),
    "SET_LOGOUT_TYPE": List<dynamic>.from(setLogoutType.map((x) => x)),
    "SEC_USERS": List<dynamic>.from(secUsers.map((x) => x.toJson())),
    "SEC_USER_THANA": List<dynamic>.from(secUserThana.map((x) => x.toJson())),
    "SET_CLASS": List<dynamic>.from(setClass.map((x) => x.toJson())),
    "SET_CLIENT_INFO": List<dynamic>.from(setClientInfo.map((x) => x)),
    "SET_DIVISION": List<dynamic>.from(setDivision.map((x) => x.toJson())),
    "SET_EXP_TYPE": List<dynamic>.from(setExpType.map((x) => x.toJson())),
    "SET_INST_TYPE": List<dynamic>.from(setInstType.map((x) => x.toJson())),
    "SET_INSTITUTE": List<dynamic>.from(setInstitute.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    "SET_ORG_TYPE": List<dynamic>.from(setOrgType.map((x) => x)),
    "SET_PROMO_ITEM": List<dynamic>.from(setPromoItem.map((x) => x.toJson())),
    "SET_SPECIMEN": List<dynamic>.from(setSpecimen.map((x) => x.toJson())),
    "SET_SUBJECT": List<dynamic>.from(setSubject.map((x) => x.toJson())),
    "SET_TEACHER_DESIG": List<dynamic>.from(setTeacherDesig.map((x) => x.toJson())),
    "SET_TEACHER_INFO": List<dynamic>.from(setTeacherInfo.map((x) => x)),
    "SET_THANA": List<dynamic>.from(setThana.map((x) => x.toJson())),
    "SET_TRANSPORT_TYPE": List<dynamic>.from(setTransportType.map((x) => x.toJson())),
    "SET_WORK_PURPOSE": List<dynamic>.from(setWorkPurpose.map((x) => x)),
    "SET_ZILLA": List<dynamic>.from(setZilla.map((x) => x.toJson())),
    "SET_ZONE": List<dynamic>.from(setZone.map((x) => x.toJson())),
    "TRN_MSG": List<dynamic>.from(trnMsg.map((x) => x)),
    "TRN_USER_PROMO_DET": List<dynamic>.from(trnUserPromoDet.map((x) => x)),
    "TRN_USER_PROMO_ITEM": List<dynamic>.from(trnUserPromoItem.map((x) => x)),
    "TRN_USER_SPECIMEN": List<dynamic>.from(trnUserSpecimen.map((x) => x)),
    "TRN_USER_SPECIMEN_DET": List<dynamic>.from(trnUserSpecimenDet.map((x) => x)),
  };
}

class DownloadInfo {
  String downNo;

  DownloadInfo({
    required this.downNo,
  });

  factory DownloadInfo.fromJson(Map<String, dynamic> json) => DownloadInfo(
    downNo: json["DOWN_NO"],
  );

  Map<String, dynamic> toJson() => {
    "DOWN_NO": downNo,
  };
}

class SecUserThana {
  String userThanaNo;
  String thanaNo;
  String userNo;
  String isActive;
  String activeFrom;
  String activeTo;

  SecUserThana({
    required this.userThanaNo,
    required this.thanaNo,
    required this.userNo,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SecUserThana.fromJson(Map<String, dynamic> json) => SecUserThana(
    userThanaNo: json["USER_THANA_NO"],
    thanaNo: json["THANA_NO"],
    userNo: json["USER_NO"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "USER_THANA_NO": userThanaNo,
    "THANA_NO": thanaNo,
    "USER_NO": userNo,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SecUser {
  String userNo;
  String userTypeNo;
  String hrEmpId;
  String userFullName;
  String userMobile;
  String isActive;
  String activeFrom;
  String activeTo;

  SecUser({
    required this.userNo,
    required this.userTypeNo,
    required this.hrEmpId,
    required this.userFullName,
    required this.userMobile,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SecUser.fromJson(Map<String, dynamic> json) => SecUser(
    userNo: json["USER_NO"],
    userTypeNo: json["USER_TYPE_NO"],
    hrEmpId: json["HR_EMP_ID"],
    userFullName: json["USER_FULL_NAME"],
    userMobile: json["USER_MOBILE"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "USER_NO": userNo,
    "USER_TYPE_NO": userTypeNo,
    "HR_EMP_ID": hrEmpId,
    "USER_FULL_NAME": userFullName,
    "USER_MOBILE": userMobile,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetClass {
  String classNo;
  String className;
  String classNameBng;
  String isActive;
  String activeFrom;
  String activeTo;

  SetClass({
    required this.classNo,
    required this.className,
    required this.classNameBng,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetClass.fromJson(Map<String, dynamic> json) => SetClass(
    classNo: json["CLASS_NO"],
    className: json["CLASS_NAME"],
    classNameBng: json["CLASS_NAME_BNG"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "CLASS_NO": classNo,
    "CLASS_NAME": className,
    "CLASS_NAME_BNG": classNameBng,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetDivision {
  String divisionNo;
  String divisionName;
  String divisionNameBng;
  String divisionCode;
  String isActive;
  String activeFrom;
  String activeTo;

  SetDivision({
    required this.divisionNo,
    required this.divisionName,
    required this.divisionNameBng,
    required this.divisionCode,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetDivision.fromJson(Map<String, dynamic> json) => SetDivision(
    divisionNo: json["DIVISION_NO"],
    divisionName: json["DIVISION_NAME"],
    divisionNameBng: json["DIVISION_NAME_BNG"],
    divisionCode: json["DIVISION_CODE"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "DIVISION_NO": divisionNo,
    "DIVISION_NAME": divisionName,
    "DIVISION_NAME_BNG": divisionNameBng,
    "DIVISION_CODE": divisionCode,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetExpType {
  String expTypeNo;
  String expTypeName;
  String expTypeCode;
  String isActive;
  String activeFrom;
  String activeTo;

  SetExpType({
    required this.expTypeNo,
    required this.expTypeName,
    required this.expTypeCode,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetExpType.fromJson(Map<String, dynamic> json) => SetExpType(
    expTypeNo: json["EXP_TYPE_NO"],
    expTypeName: json["EXP_TYPE_NAME"],
    expTypeCode: json["EXP_TYPE_CODE"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "EXP_TYPE_NO": expTypeNo,
    "EXP_TYPE_NAME": expTypeName,
    "EXP_TYPE_CODE": expTypeCode,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetFeedbackType {
  String feedbackTypeNo;
  String feedbackName;
  String feedbackCode;
  dynamic feedbackDesc;
  String isActive;
  String activeFrom;
  String activeTo;

  SetFeedbackType({
    required this.feedbackTypeNo,
    required this.feedbackName,
    required this.feedbackCode,
    required this.feedbackDesc,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetFeedbackType.fromJson(Map<String, dynamic> json) => SetFeedbackType(
    feedbackTypeNo: json["FEEDBACK_TYPE_NO"],
    feedbackName: json["FEEDBACK_NAME"],
    feedbackCode: json["FEEDBACK_CODE"],
    feedbackDesc: json["FEEDBACK_DESC"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "FEEDBACK_TYPE_NO": feedbackTypeNo,
    "FEEDBACK_NAME": feedbackName,
    "FEEDBACK_CODE": feedbackCode,
    "FEEDBACK_DESC": feedbackDesc,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetInstType {
  String instTypeNo;
  String instTypeName;
  dynamic instTypeCode;
  String isActive;
  String activeFrom;
  String activeTo;

  SetInstType({
    required this.instTypeNo,
    required this.instTypeName,
    required this.instTypeCode,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetInstType.fromJson(Map<String, dynamic> json) => SetInstType(
    instTypeNo: json["INST_TYPE_NO"],
    instTypeName: json["INST_TYPE_NAME"],
    instTypeCode: json["INST_TYPE_CODE"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "INST_TYPE_NO": instTypeNo,
    "INST_TYPE_NAME": instTypeName,
    "INST_TYPE_CODE": instTypeCode,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetPromoItem {
  String promoItemNo;
  String promoItemName;
  String promoItemCode;
  String promoItemTypeNo;
  String isActive;
  String activeFrom;
  String activeTo;

  SetPromoItem({
    required this.promoItemNo,
    required this.promoItemName,
    required this.promoItemCode,
    required this.promoItemTypeNo,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetPromoItem.fromJson(Map<String, dynamic> json) => SetPromoItem(
    promoItemNo: json["PROMO_ITEM_NO"],
    promoItemName: json["PROMO_ITEM_NAME"],
    promoItemCode: json["PROMO_ITEM_CODE"],
    promoItemTypeNo: json["PROMO_ITEM_TYPE_NO"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "PROMO_ITEM_NO": promoItemNo,
    "PROMO_ITEM_NAME": promoItemName,
    "PROMO_ITEM_CODE": promoItemCode,
    "PROMO_ITEM_TYPE_NO": promoItemTypeNo,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetSpeciman {
  String specimenNo;
  String specimenName;
  String? specimenNameBng;
  String specimenCode;
  String bookTypeNo;
  String? bookUniqueCode;
  String isActive;
  String activeFrom;
  String activeTo;

  SetSpeciman({
    required this.specimenNo,
    required this.specimenName,
    required this.specimenNameBng,
    required this.specimenCode,
    required this.bookTypeNo,
    required this.bookUniqueCode,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetSpeciman.fromJson(Map<String, dynamic> json) => SetSpeciman(
    specimenNo: json["SPECIMEN_NO"],
    specimenName: json["SPECIMEN_NAME"],
    specimenNameBng: json["SPECIMEN_NAME_BNG"],
    specimenCode: json["SPECIMEN_CODE"],
    bookTypeNo: json["BOOK_TYPE_NO"],
    bookUniqueCode: json["BOOK_UNIQUE_CODE"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "SPECIMEN_NO": specimenNo,
    "SPECIMEN_NAME": specimenName,
    "SPECIMEN_NAME_BNG": specimenNameBng,
    "SPECIMEN_CODE": specimenCode,
    "BOOK_TYPE_NO": bookTypeNo,
    "BOOK_UNIQUE_CODE": bookUniqueCode,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetSubject {
  String subjectNo;
  String subjectName;
  String? subjectNameBng;
  String? subjectCode;
  String isActive;
  String activeFrom;
  String activeTo;

  SetSubject({
    required this.subjectNo,
    required this.subjectName,
    required this.subjectNameBng,
    required this.subjectCode,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetSubject.fromJson(Map<String, dynamic> json) => SetSubject(
    subjectNo: json["SUBJECT_NO"],
    subjectName: json["SUBJECT_NAME"],
    subjectNameBng: json["SUBJECT_NAME_BNG"],
    subjectCode: json["SUBJECT_CODE"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "SUBJECT_NO": subjectNo,
    "SUBJECT_NAME": subjectName,
    "SUBJECT_NAME_BNG": subjectNameBng,
    "SUBJECT_CODE": subjectCode,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetTeacherDesig {
  String teachDesigNo;
  String teacherDesigName;
  dynamic teacherDesigNameBng;
  String isActive;
  String activeFrom;
  String activeTo;

  SetTeacherDesig({
    required this.teachDesigNo,
    required this.teacherDesigName,
    required this.teacherDesigNameBng,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetTeacherDesig.fromJson(Map<String, dynamic> json) => SetTeacherDesig(
    teachDesigNo: json["TEACH_DESIG_NO"],
    teacherDesigName: json["TEACHER_DESIG_NAME"],
    teacherDesigNameBng: json["TEACHER_DESIG_NAME_BNG"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "TEACH_DESIG_NO": teachDesigNo,
    "TEACHER_DESIG_NAME": teacherDesigName,
    "TEACHER_DESIG_NAME_BNG": teacherDesigNameBng,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetThana {
  String thanaNo;
  String zoneNo;
  String zillaNo;
  String thanaName;
  dynamic thanaNameBng;
  String thanaCode;
  String isActive;
  String activeFrom;
  String activeTo;

  SetThana({
    required this.thanaNo,
    required this.zoneNo,
    required this.zillaNo,
    required this.thanaName,
    required this.thanaNameBng,
    required this.thanaCode,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetThana.fromJson(Map<String, dynamic> json) => SetThana(
    thanaNo: json["THANA_NO"],
    zoneNo: json["ZONE_NO"],
    zillaNo: json["ZILLA_NO"],
    thanaName: json["THANA_NAME"],
    thanaNameBng: json["THANA_NAME_BNG"],
    thanaCode: json["THANA_CODE"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "THANA_NO": thanaNo,
    "ZONE_NO": zoneNo,
    "ZILLA_NO": zillaNo,
    "THANA_NAME": thanaName,
    "THANA_NAME_BNG": thanaNameBng,
    "THANA_CODE": thanaCode,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetTransportType {
  String transTypeNo;
  String transTypeName;
  String transTypeCode;
  String isActive;
  String activeFrom;
  String activeTo;

  SetTransportType({
    required this.transTypeNo,
    required this.transTypeName,
    required this.transTypeCode,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetTransportType.fromJson(Map<String, dynamic> json) => SetTransportType(
    transTypeNo: json["TRANS_TYPE_NO"],
    transTypeName: json["TRANS_TYPE_NAME"],
    transTypeCode: json["TRANS_TYPE_CODE"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "TRANS_TYPE_NO": transTypeNo,
    "TRANS_TYPE_NAME": transTypeName,
    "TRANS_TYPE_CODE": transTypeCode,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetZilla {
  String zillaNo;
  String divisionNo;
  String zillaName;
  String zillaNameBng;
  String zillaCode;
  String isActive;
  String activeFrom;
  String activeTo;

  SetZilla({
    required this.zillaNo,
    required this.divisionNo,
    required this.zillaName,
    required this.zillaNameBng,
    required this.zillaCode,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetZilla.fromJson(Map<String, dynamic> json) => SetZilla(
    zillaNo: json["ZILLA_NO"],
    divisionNo: json["DIVISION_NO"],
    zillaName: json["ZILLA_NAME"],
    zillaNameBng: json["ZILLA_NAME_BNG"],
    zillaCode: json["ZILLA_CODE"],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "ZILLA_NO": zillaNo,
    "DIVISION_NO": divisionNo,
    "ZILLA_NAME": zillaName,
    "ZILLA_NAME_BNG": zillaNameBng,
    "ZILLA_CODE": zillaCode,
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

class SetZone {
  String zoneNo;
  String divisionNo;
  String zoneName;
  String? zoneNameBng;
  String zoneCode;
  ZoneGrade? zoneGrade;
  String isActive;
  String activeFrom;
  String activeTo;

  SetZone({
    required this.zoneNo,
    required this.divisionNo,
    required this.zoneName,
    required this.zoneNameBng,
    required this.zoneCode,
    required this.zoneGrade,
    required this.isActive,
    required this.activeFrom,
    required this.activeTo,
  });

  factory SetZone.fromJson(Map<String, dynamic> json) => SetZone(
    zoneNo: json["ZONE_NO"],
    divisionNo: json["DIVISION_NO"],
    zoneName: json["ZONE_NAME"],
    zoneNameBng: json["ZONE_NAME_BNG"],
    zoneCode: json["ZONE_CODE"],
    //zoneGrade: zoneGradeValues.map[json["ZONE_GRADE"]]!,    // Exception occured : Null check operator used on a null value
    zoneGrade: zoneGradeValues.map[json["ZONE_GRADE"]],
    isActive: json["IS_ACTIVE"],
    activeFrom: json["ACTIVE_FROM"],
    activeTo: json["ACTIVE_TO"],
  );

  Map<String, dynamic> toJson() => {
    "ZONE_NO": zoneNo,
    "DIVISION_NO": divisionNo,
    "ZONE_NAME": zoneName,
    "ZONE_NAME_BNG": zoneNameBng,
    "ZONE_CODE": zoneCode,
    "ZONE_GRADE": zoneGradeValues.reverse[zoneGrade],
    "IS_ACTIVE": isActive,
    "ACTIVE_FROM": activeFrom,
    "ACTIVE_TO": activeTo,
  };
}

enum ZoneGrade {
  A,
  B,
  C
}

final zoneGradeValues = EnumValues({
  "A": ZoneGrade.A,
  "B": ZoneGrade.B,
  "C": ZoneGrade.C
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
