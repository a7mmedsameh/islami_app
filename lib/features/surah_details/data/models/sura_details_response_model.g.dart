// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sura_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuraDetailsResponseModel _$SuraDetailsResponseModelFromJson(
  Map<String, dynamic> json,
) => SuraDetailsResponseModel(
  data: json['data'] == null
      ? null
      : DetailsSura.fromJson(json['data'] as Map<String, dynamic>),
);

DetailsSura _$DetailsSuraFromJson(Map<String, dynamic> json) => DetailsSura(
  number: (json['number'] as num?)?.toInt(),
  name: json['name'] as String?,
  englishName: json['englishName'] as String?,
  ayahs: (json['ayahs'] as List<dynamic>?)
      ?.map((e) => Ayahs.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Ayahs _$AyahsFromJson(Map<String, dynamic> json) => Ayahs(
  text: json['text'] as String?,
  numberInSurah: (json['numberInSurah'] as num?)?.toInt(),
);
