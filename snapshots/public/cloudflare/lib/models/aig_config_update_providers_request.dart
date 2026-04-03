// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigUpdateProvidersRequest {const AigConfigUpdateProvidersRequest({required this.secret});

factory AigConfigUpdateProvidersRequest.fromJson(Map<String, dynamic> json) { return AigConfigUpdateProvidersRequest(
  secret: json['secret'] as String,
); }

final String secret;

Map<String, dynamic> toJson() { return {
  'secret': secret,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('secret') && json['secret'] is String; } 
AigConfigUpdateProvidersRequest copyWith({String? secret}) { return AigConfigUpdateProvidersRequest(
  secret: secret ?? this.secret,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateProvidersRequest &&
          secret == other.secret; } 
@override int get hashCode { return secret.hashCode; } 
@override String toString() { return 'AigConfigUpdateProvidersRequest(secret: $secret)'; } 
 }
