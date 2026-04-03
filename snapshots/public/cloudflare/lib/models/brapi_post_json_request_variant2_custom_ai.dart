// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostJsonRequestVariant2CustomAi {const BrapiPostJsonRequestVariant2CustomAi({required this.authorization, required this.model, });

factory BrapiPostJsonRequestVariant2CustomAi.fromJson(Map<String, dynamic> json) { return BrapiPostJsonRequestVariant2CustomAi(
  authorization: json['authorization'] as String,
  model: json['model'] as String,
); }

/// Authorization token for the AI model: `Bearer <token>`.
final String authorization;

/// AI model to use for the request. Must be formed as `<provider>/<model_name>`, e.g. `workers-ai/@cf/meta/llama-3.3-70b-instruct-fp8-fast`
final String model;

Map<String, dynamic> toJson() { return {
  'authorization': authorization,
  'model': model,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('authorization') && json['authorization'] is String &&
      json.containsKey('model') && json['model'] is String; } 
BrapiPostJsonRequestVariant2CustomAi copyWith({String? authorization, String? model, }) { return BrapiPostJsonRequestVariant2CustomAi(
  authorization: authorization ?? this.authorization,
  model: model ?? this.model,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostJsonRequestVariant2CustomAi &&
          authorization == other.authorization &&
          model == other.model; } 
@override int get hashCode { return Object.hash(authorization, model); } 
@override String toString() { return 'BrapiPostJsonRequestVariant2CustomAi(authorization: $authorization, model: $model)'; } 
 }
