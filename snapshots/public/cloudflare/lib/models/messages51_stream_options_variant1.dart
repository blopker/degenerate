// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages51StreamOptionsVariant1 {const Messages51StreamOptionsVariant1({this.includeObfuscation, this.includeUsage, });

factory Messages51StreamOptionsVariant1.fromJson(Map<String, dynamic> json) { return Messages51StreamOptionsVariant1(
  includeObfuscation: json['include_obfuscation'] as bool?,
  includeUsage: json['include_usage'] as bool?,
); }

final bool? includeObfuscation;

final bool? includeUsage;

Map<String, dynamic> toJson() { return {
  'include_obfuscation': ?includeObfuscation,
  'include_usage': ?includeUsage,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages51StreamOptionsVariant1 copyWith({bool Function()? includeObfuscation, bool Function()? includeUsage, }) { return Messages51StreamOptionsVariant1(
  includeObfuscation: includeObfuscation != null ? includeObfuscation() : this.includeObfuscation,
  includeUsage: includeUsage != null ? includeUsage() : this.includeUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51StreamOptionsVariant1 &&
          includeObfuscation == other.includeObfuscation &&
          includeUsage == other.includeUsage; } 
@override int get hashCode { return Object.hash(includeObfuscation, includeUsage); } 
@override String toString() { return 'Messages51StreamOptionsVariant1(includeObfuscation: $includeObfuscation, includeUsage: $includeUsage)'; } 
 }
