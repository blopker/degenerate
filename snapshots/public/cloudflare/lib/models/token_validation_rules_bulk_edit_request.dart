// GENERATED CODE - DO NOT MODIFY BY HAND

final class TokenValidationRulesBulkEditRequest {const TokenValidationRulesBulkEditRequest({required this.id});

factory TokenValidationRulesBulkEditRequest.fromJson(Map<String, dynamic> json) { return TokenValidationRulesBulkEditRequest(
  id: json['id'] as String,
); }

/// Rule ID this patch applies to
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
TokenValidationRulesBulkEditRequest copyWith({String? id}) { return TokenValidationRulesBulkEditRequest(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationRulesBulkEditRequest &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'TokenValidationRulesBulkEditRequest(id: $id)'; } 
 }
