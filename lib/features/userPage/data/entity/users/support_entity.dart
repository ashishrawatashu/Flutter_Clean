import 'dart:convert';

import '../../../domain/model/users/support_model.dart';


SupportEntity supportFromJson(String str) => SupportEntity.fromJson(json.decode(str));
String supportToJson(SupportEntity data) => json.encode(data.toJson());

class SupportEntity {
  SupportEntity({
    this.url,
    this.text,
  });

  SupportEntity.fromJson(dynamic json) {
    url = json['url'];
    text = json['text'];
  }
  String? url;
  String? text;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['text'] = text;
    return map;
  }

  SupportModel toModel() => SupportModel(
        url: url,
        text: text,
      );
}
