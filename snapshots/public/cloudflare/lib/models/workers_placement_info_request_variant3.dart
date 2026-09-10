// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersPlacementInfoRequestVariant3 {const WorkersPlacementInfoRequestVariant3({required this.hostname});

factory WorkersPlacementInfoRequestVariant3.fromJson(Map<String, dynamic> json) {return WorkersPlacementInfoRequestVariant3(
  hostname: json['hostname'] as String,
);}

/// HTTP hostname for targeted placement.
final String hostname;

Map<String, dynamic> toJson() {return {
  'hostname': hostname,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('hostname') && json['hostname'] is String;}
WorkersPlacementInfoRequestVariant3 copyWith({String? hostname}) {return WorkersPlacementInfoRequestVariant3(
  hostname: hostname ?? this.hostname,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersPlacementInfoRequestVariant3 &&
          hostname == other.hostname;}
@override int get hashCode {return hostname.hashCode;}
@override String toString() {return 'WorkersPlacementInfoRequestVariant3(hostname: $hostname)';}
}
