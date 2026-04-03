// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchInstanceCreateJobRequest {const AiSearchInstanceCreateJobRequest({this.description});

factory AiSearchInstanceCreateJobRequest.fromJson(Map<String, dynamic> json) { return AiSearchInstanceCreateJobRequest(
  description: json['description'] as String?,
); }

final String? description;

Map<String, dynamic> toJson() { return {
  'description': ?description,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description'}.contains(key)); } 
AiSearchInstanceCreateJobRequest copyWith({String Function()? description}) { return AiSearchInstanceCreateJobRequest(
  description: description != null ? description() : this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceCreateJobRequest &&
          description == other.description; } 
@override int get hashCode { return description.hashCode; } 
@override String toString() { return 'AiSearchInstanceCreateJobRequest(description: $description)'; } 
 }
