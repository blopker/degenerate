// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetQualitySpeedTopLocationsResponseResultTop0 {const RadarGetQualitySpeedTopLocationsResponseResultTop0({required this.bandwidthDownload, required this.bandwidthUpload, required this.clientCountryAlpha2, required this.clientCountryName, required this.jitterIdle, required this.jitterLoaded, required this.latencyIdle, required this.latencyLoaded, required this.numTests, required this.rankPower, });

factory RadarGetQualitySpeedTopLocationsResponseResultTop0.fromJson(Map<String, dynamic> json) { return RadarGetQualitySpeedTopLocationsResponseResultTop0(
  bandwidthDownload: json['bandwidthDownload'] as String,
  bandwidthUpload: json['bandwidthUpload'] as String,
  clientCountryAlpha2: json['clientCountryAlpha2'] as String,
  clientCountryName: json['clientCountryName'] as String,
  jitterIdle: json['jitterIdle'] as String,
  jitterLoaded: json['jitterLoaded'] as String,
  latencyIdle: json['latencyIdle'] as String,
  latencyLoaded: json['latencyLoaded'] as String,
  numTests: (json['numTests'] as num).toDouble(),
  rankPower: (json['rankPower'] as num).toDouble(),
); }

final String bandwidthDownload;

final String bandwidthUpload;

final String clientCountryAlpha2;

final String clientCountryName;

final String jitterIdle;

final String jitterLoaded;

final String latencyIdle;

final String latencyLoaded;

final double numTests;

final double rankPower;

Map<String, dynamic> toJson() { return {
  'bandwidthDownload': bandwidthDownload,
  'bandwidthUpload': bandwidthUpload,
  'clientCountryAlpha2': clientCountryAlpha2,
  'clientCountryName': clientCountryName,
  'jitterIdle': jitterIdle,
  'jitterLoaded': jitterLoaded,
  'latencyIdle': latencyIdle,
  'latencyLoaded': latencyLoaded,
  'numTests': numTests,
  'rankPower': rankPower,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bandwidthDownload') && json['bandwidthDownload'] is String &&
      json.containsKey('bandwidthUpload') && json['bandwidthUpload'] is String &&
      json.containsKey('clientCountryAlpha2') && json['clientCountryAlpha2'] is String &&
      json.containsKey('clientCountryName') && json['clientCountryName'] is String &&
      json.containsKey('jitterIdle') && json['jitterIdle'] is String &&
      json.containsKey('jitterLoaded') && json['jitterLoaded'] is String &&
      json.containsKey('latencyIdle') && json['latencyIdle'] is String &&
      json.containsKey('latencyLoaded') && json['latencyLoaded'] is String &&
      json.containsKey('numTests') && json['numTests'] is num &&
      json.containsKey('rankPower') && json['rankPower'] is num; } 
RadarGetQualitySpeedTopLocationsResponseResultTop0 copyWith({String? bandwidthDownload, String? bandwidthUpload, String? clientCountryAlpha2, String? clientCountryName, String? jitterIdle, String? jitterLoaded, String? latencyIdle, String? latencyLoaded, double? numTests, double? rankPower, }) { return RadarGetQualitySpeedTopLocationsResponseResultTop0(
  bandwidthDownload: bandwidthDownload ?? this.bandwidthDownload,
  bandwidthUpload: bandwidthUpload ?? this.bandwidthUpload,
  clientCountryAlpha2: clientCountryAlpha2 ?? this.clientCountryAlpha2,
  clientCountryName: clientCountryName ?? this.clientCountryName,
  jitterIdle: jitterIdle ?? this.jitterIdle,
  jitterLoaded: jitterLoaded ?? this.jitterLoaded,
  latencyIdle: latencyIdle ?? this.latencyIdle,
  latencyLoaded: latencyLoaded ?? this.latencyLoaded,
  numTests: numTests ?? this.numTests,
  rankPower: rankPower ?? this.rankPower,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualitySpeedTopLocationsResponseResultTop0 &&
          bandwidthDownload == other.bandwidthDownload &&
          bandwidthUpload == other.bandwidthUpload &&
          clientCountryAlpha2 == other.clientCountryAlpha2 &&
          clientCountryName == other.clientCountryName &&
          jitterIdle == other.jitterIdle &&
          jitterLoaded == other.jitterLoaded &&
          latencyIdle == other.latencyIdle &&
          latencyLoaded == other.latencyLoaded &&
          numTests == other.numTests &&
          rankPower == other.rankPower; } 
@override int get hashCode { return Object.hash(bandwidthDownload, bandwidthUpload, clientCountryAlpha2, clientCountryName, jitterIdle, jitterLoaded, latencyIdle, latencyLoaded, numTests, rankPower); } 
@override String toString() { return 'RadarGetQualitySpeedTopLocationsResponseResultTop0(bandwidthDownload: $bandwidthDownload, bandwidthUpload: $bandwidthUpload, clientCountryAlpha2: $clientCountryAlpha2, clientCountryName: $clientCountryName, jitterIdle: $jitterIdle, jitterLoaded: $jitterLoaded, latencyIdle: $latencyIdle, latencyLoaded: $latencyLoaded, numTests: $numTests, rankPower: $rankPower)'; } 
 }
