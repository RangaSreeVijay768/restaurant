// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'environment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppEnvironment _$AppEnvironmentFromJson(Map<String, dynamic> json) =>
    AppEnvironment(
      apiUrl: json['apiUrl'] as String,
      adUnits: json['adUnits'] == null
          ? null
          : AdUnitsBean.fromJson(json['adUnits'] as Map<String, dynamic>),
      isTesting: json['isTesting'] as bool?,
    );

Map<String, dynamic> _$AppEnvironmentToJson(AppEnvironment instance) =>
    <String, dynamic>{
      'apiUrl': instance.apiUrl,
      'adUnits': instance.adUnits,
      'isTesting': instance.isTesting,
    };

AdUnitsBean _$AdUnitsBeanFromJson(Map<String, dynamic> json) => AdUnitsBean(
      bannerAd: json['bannerAd'] == null
          ? null
          : AdUnitConfig.fromJson(json['bannerAd'] as Map<String, dynamic>),
      nativeAd: json['nativeAd'] == null
          ? null
          : AdUnitConfig.fromJson(json['nativeAd'] as Map<String, dynamic>),
    )..appOpenAd = json['appOpenAd'] == null
        ? null
        : AdUnitConfig.fromJson(json['appOpenAd'] as Map<String, dynamic>);

Map<String, dynamic> _$AdUnitsBeanToJson(AdUnitsBean instance) =>
    <String, dynamic>{
      'bannerAd': instance.bannerAd,
      'nativeAd': instance.nativeAd,
      'appOpenAd': instance.appOpenAd,
    };

AdUnitConfig _$AdUnitConfigFromJson(Map<String, dynamic> json) => AdUnitConfig(
      android: json['android'] as String?,
      ios: json['ios'] as String?,
    );

Map<String, dynamic> _$AdUnitConfigToJson(AdUnitConfig instance) =>
    <String, dynamic>{
      'android': instance.android,
      'ios': instance.ios,
    };
