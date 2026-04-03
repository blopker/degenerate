// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Prompt43StreamOptionsVariant1 {const Prompt43StreamOptionsVariant1({this.includeObfuscation, this.includeUsage, });

factory Prompt43StreamOptionsVariant1.fromJson(Map<String, dynamic> json) { return Prompt43StreamOptionsVariant1(
  includeObfuscation: json['include_obfuscation'] as bool?,
  includeUsage: json['include_usage'] as bool?,
); }

final bool? includeObfuscation;

final bool? includeUsage;

Map<String, dynamic> toJson() { return {
  'include_obfuscation': ?includeObfuscation,
  'include_usage': ?includeUsage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'include_obfuscation', 'include_usage'}.contains(key)); } 
Prompt43StreamOptionsVariant1 copyWith({bool Function()? includeObfuscation, bool Function()? includeUsage, }) { return Prompt43StreamOptionsVariant1(
  includeObfuscation: includeObfuscation != null ? includeObfuscation() : this.includeObfuscation,
  includeUsage: includeUsage != null ? includeUsage() : this.includeUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43StreamOptionsVariant1 &&
          includeObfuscation == other.includeObfuscation &&
          includeUsage == other.includeUsage; } 
@override int get hashCode { return Object.hash(includeObfuscation, includeUsage); } 
@override String toString() { return 'Prompt43StreamOptionsVariant1(includeObfuscation: $includeObfuscation, includeUsage: $includeUsage)'; } 
 }
