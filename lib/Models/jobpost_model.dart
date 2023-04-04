import 'package:http/http.dart' as http;

class jobpostmodel {
  int? jId;
  String? jTitle;
  int? jExp;
  String? jQualification;
  int? nov;
  String? dueDate;

  jobpostmodel(
      {this.jId,
      this.jTitle,
      this.jExp,
      this.jQualification,
      this.nov,
      this.dueDate});

  jobpostmodel.fromJson(Map<String, dynamic> json) {
    jId = json['j_id'];
    jTitle = json['j_title'];
    jExp = json['j_exp'];
    jQualification = json['j_qualification'];
    nov = json['nov'];
    dueDate = json['due_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['j_id'] = this.jId;
    data['j_title'] = this.jTitle;
    data['j_exp'] = this.jExp;
    data['j_qualification'] = this.jQualification;
    data['nov'] = this.nov;
    data['due_date'] = this.dueDate;
    return data;
  }
}
