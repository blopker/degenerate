// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZonesCacheRulesBaseRequest {const ZonesCacheRulesBaseRequest({required this.id});

factory ZonesCacheRulesBaseRequest.fromJson(Map<String, dynamic> json) {return ZonesCacheRulesBaseRequest(
  id: json['id'] as String,
);}

/// Identifier of the zone setting.
final String id;

Map<String, dynamic> toJson() {return {
  'id': id,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') && json['id'] is String;}
ZonesCacheRulesBaseRequest copyWith({String? id}) {return ZonesCacheRulesBaseRequest(
  id: id ?? this.id,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesCacheRulesBaseRequest &&
          id == other.id;}
@override int get hashCode {return id.hashCode;}
@override String toString() {return 'ZonesCacheRulesBaseRequest(id: $id)';}
}
