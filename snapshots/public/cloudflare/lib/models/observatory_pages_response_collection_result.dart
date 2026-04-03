// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'observatory_labeled_region.dart';import 'observatory_page_test_.dart';import 'observatory_schedule_frequency.dart';import 'observatory_url.dart';@immutable final class ObservatoryPagesResponseCollectionResult {const ObservatoryPagesResponseCollectionResult({this.region, this.scheduleFrequency, this.tests, this.url, });

factory ObservatoryPagesResponseCollectionResult.fromJson(Map<String, dynamic> json) { return ObservatoryPagesResponseCollectionResult(
  region: json['region'] != null ? ObservatoryLabeledRegion.fromJson(json['region'] as Map<String, dynamic>) : null,
  scheduleFrequency: json['scheduleFrequency'] != null ? ObservatoryScheduleFrequency.fromJson(json['scheduleFrequency'] as String) : null,
  tests: (json['tests'] as List<dynamic>?)?.map((e) => ObservatoryPageTest.fromJson(e as Map<String, dynamic>)).toList(),
  url: json['url'] != null ? ObservatoryUrl.fromJson(json['url'] as String) : null,
); }

final ObservatoryLabeledRegion? region;

final ObservatoryScheduleFrequency? scheduleFrequency;

final List<ObservatoryPageTest>? tests;

final ObservatoryUrl? url;

Map<String, dynamic> toJson() { return {
  if (region != null) 'region': region?.toJson(),
  if (scheduleFrequency != null) 'scheduleFrequency': scheduleFrequency?.toJson(),
  if (tests != null) 'tests': tests?.map((e) => e.toJson()).toList(),
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'region', 'scheduleFrequency', 'tests', 'url'}.contains(key)); } 
ObservatoryPagesResponseCollectionResult copyWith({ObservatoryLabeledRegion Function()? region, ObservatoryScheduleFrequency Function()? scheduleFrequency, List<ObservatoryPageTest> Function()? tests, ObservatoryUrl Function()? url, }) { return ObservatoryPagesResponseCollectionResult(
  region: region != null ? region() : this.region,
  scheduleFrequency: scheduleFrequency != null ? scheduleFrequency() : this.scheduleFrequency,
  tests: tests != null ? tests() : this.tests,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryPagesResponseCollectionResult &&
          region == other.region &&
          scheduleFrequency == other.scheduleFrequency &&
          listEquals(tests, other.tests) &&
          url == other.url; } 
@override int get hashCode { return Object.hash(region, scheduleFrequency, Object.hashAll(tests ?? const []), url); } 
@override String toString() { return 'ObservatoryPagesResponseCollectionResult(region: $region, scheduleFrequency: $scheduleFrequency, tests: $tests, url: $url)'; } 
 }
