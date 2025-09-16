import 'package:freezed_annotation/freezed_annotation.dart';
part 'sura_details_response_model.g.dart';

@JsonSerializable(createToJson: false)
class SuraDetailsResponseModel {
  @JsonKey(name: 'data')
  DetailsSura? data;

  SuraDetailsResponseModel({ this.data});

  factory SuraDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SuraDetailsResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class DetailsSura {
  int? number;
  String? name;
  String? englishName;
  List<Ayahs>? ayahs;

  DetailsSura({this.number, this.name, this.englishName, this.ayahs});

  factory DetailsSura.fromJson(Map<String, dynamic> json) =>
      _$DetailsSuraFromJson(json);
}

@JsonSerializable(createToJson: false)
class Ayahs {
  String? text;
  int? numberInSurah;

  Ayahs({this.text, this.numberInSurah});

  factory Ayahs.fromJson(Map<String, dynamic> json) => _$AyahsFromJson(json);
}
