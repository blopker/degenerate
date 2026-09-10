// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'organization_id.dart';@immutable final class OrganizationRequestParent {const OrganizationRequestParent({required this.id});

factory OrganizationRequestParent.fromJson(Map<String, dynamic> json) {return OrganizationRequestParent(
  id: OrganizationId.fromJson(json['id'] as String),
);}

final OrganizationId id;

Map<String, dynamic> toJson() {return {
  'id': id.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id');}
OrganizationRequestParent copyWith({OrganizationId? id}) {return OrganizationRequestParent(
  id: id ?? this.id,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is OrganizationRequestParent &&
          id == other.id;}
@override int get hashCode {return id.hashCode;}
@override String toString() {return 'OrganizationRequestParent(id: $id)';}
}
