// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surahs_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurahsResponseModel _$SurahsResponseModelFromJson(Map<String, dynamic> json) =>
    SurahsResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SurahsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

SurahsData _$SurahsDataFromJson(Map<String, dynamic> json) => SurahsData(
  number: (json['number'] as num?)?.toInt(),
  name: json['name'] as String?,
  englishName: json['englishName'] as String?,
  englishNameTranslation: json['englishNameTranslation'] as String?,
  numberOfAyahs: (json['numberOfAyahs'] as num?)?.toInt(),
  revelationType: json['revelationType'] as String?,
);
