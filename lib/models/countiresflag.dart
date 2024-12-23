class CountriesFlagModel {
  String? flag;
  String? country;
  String? code;

  CountriesFlagModel({this.flag, this.country, this.code});

  CountriesFlagModel.fromJson(Map<String, dynamic> json) {
    flag = json['flag'];
    country = json['country'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flag'] = this.flag;
    data['country'] = this.country;
    data['code'] = this.code;
    return data;
  }
}
