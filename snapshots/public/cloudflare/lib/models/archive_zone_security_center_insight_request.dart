// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ArchiveZoneSecurityCenterInsightRequest {const ArchiveZoneSecurityCenterInsightRequest({this.dismiss});

factory ArchiveZoneSecurityCenterInsightRequest.fromJson(Map<String, dynamic> json) {return ArchiveZoneSecurityCenterInsightRequest(
  dismiss: json['dismiss'] as bool?,
);}

final bool? dismiss;

/// The value with the schema default applied when absent.
bool get dismissOrDefault {return dismiss ?? true;}
Map<String, dynamic> toJson() {return {
  'dismiss': ?dismiss,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'dismiss'}.contains(key));}
ArchiveZoneSecurityCenterInsightRequest copyWith({bool? Function()? dismiss}) {return ArchiveZoneSecurityCenterInsightRequest(
  dismiss: dismiss != null ? dismiss() : this.dismiss,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ArchiveZoneSecurityCenterInsightRequest &&
          dismiss == other.dismiss;}
@override int get hashCode {return dismiss.hashCode;}
@override String toString() {return 'ArchiveZoneSecurityCenterInsightRequest(dismiss: $dismiss)';}
}
