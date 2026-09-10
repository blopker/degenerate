// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BaseEntityRequest {const BaseEntityRequest({required this.id});

factory BaseEntityRequest.fromJson(Map<String, dynamic> json) {return BaseEntityRequest(
  id: json['id'] as String,
);}

final String id;

Map<String, dynamic> toJson() {return {
  'id': id,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') && json['id'] is String;}
BaseEntityRequest copyWith({String? id}) {return BaseEntityRequest(
  id: id ?? this.id,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is BaseEntityRequest &&
          id == other.id;}
@override int get hashCode {return id.hashCode;}
@override String toString() {return 'BaseEntityRequest(id: $id)';}
}
