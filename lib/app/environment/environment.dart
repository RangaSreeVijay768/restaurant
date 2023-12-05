import 'package:json_annotation/json_annotation.dart';

part 'environment.g.dart';

@JsonSerializable()
class AppEnvironment {
  factory AppEnvironment.fromJson(Map<String, dynamic> json) =>
      _$AppEnvironmentFromJson(json);

  Map<String, dynamic> toJson(instance) => _$AppEnvironmentToJson(this);

  String apiUrl;
  AdUnitsBean? adUnits;
  bool? isTesting;

  AppEnvironment(
      {required this.apiUrl, required this.adUnits, required this.isTesting} );
}


@JsonSerializable()
class AdUnitsBean {
  AdUnitConfig? bannerAd;
  AdUnitConfig? nativeAd;
  AdUnitConfig? appOpenAd;

  AdUnitsBean({this.bannerAd, this.nativeAd});

  factory AdUnitsBean.fromJson(Map<String, dynamic> json) =>
      _$AdUnitsBeanFromJson(json);

  Map<String, dynamic> toJson() => _$AdUnitsBeanToJson(this);
}

@JsonSerializable()
class AdUnitConfig {
  String? android;
  String? ios;

  AdUnitConfig({this.android, this.ios});

  factory AdUnitConfig.fromJson(Map<String, dynamic> json) =>
      _$AdUnitConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AdUnitConfigToJson(this);
}


