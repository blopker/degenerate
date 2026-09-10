// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersPlacementInfoRequestVariant4 {const WorkersPlacementInfoRequestVariant4({required this.host});

factory WorkersPlacementInfoRequestVariant4.fromJson(Map<String, dynamic> json) {return WorkersPlacementInfoRequestVariant4(
  host: json['host'] as String,
);}

/// TCP host and port for targeted placement.
final String host;

Map<String, dynamic> toJson() {return {
  'host': host,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('host') && json['host'] is String;}
WorkersPlacementInfoRequestVariant4 copyWith({String? host}) {return WorkersPlacementInfoRequestVariant4(
  host: host ?? this.host,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersPlacementInfoRequestVariant4 &&
          host == other.host;}
@override int get hashCode {return host.hashCode;}
@override String toString() {return 'WorkersPlacementInfoRequestVariant4(host: $host)';}
}
