class ABCEntity {
  List<Weatherinfo> weatherinfo;
  String type;

  ABCEntity({this.weatherinfo, this.type});

  ABCEntity.fromJson(Map<String, dynamic> json) {
    if (json['weatherinfo'] != null) {
      weatherinfo = new List<Weatherinfo>();
      json['weatherinfo'].forEach((v) {
        weatherinfo.add(new Weatherinfo.fromJson(v));
      });
    }
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.weatherinfo != null) {
      data['weatherinfo'] = this.weatherinfo.map((v) => v.toJson()).toList();
    }
    data['type'] = this.type;
    return data;
  }
}

class Weatherinfo {
  String city;
  String cityid;
  String temp1;
  String temp2;
  String weather;
  String ptime;

  Weatherinfo(
      {this.city,
      this.cityid,
      this.temp1,
      this.temp2,
      this.weather,
      this.ptime});

  Weatherinfo.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    cityid = json['cityid'];
    temp1 = json['temp1'];
    temp2 = json['temp2'];
    weather = json['weather'];
    ptime = json['ptime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['cityid'] = this.cityid;
    data['temp1'] = this.temp1;
    data['temp2'] = this.temp2;
    data['weather'] = this.weather;
    data['ptime'] = this.ptime;
    return data;
  }
}
