// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'domain_properties.dart';@immutable final class DomainResponseCollection {const DomainResponseCollection({this.result});

factory DomainResponseCollection.fromJson(Map<String, dynamic> json) { return DomainResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => DomainProperties.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DomainProperties>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DomainResponseCollection copyWith({List<DomainProperties> Function()? result}) { return DomainResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DomainResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DomainResponseCollection(result: $result)'; } 
 }
