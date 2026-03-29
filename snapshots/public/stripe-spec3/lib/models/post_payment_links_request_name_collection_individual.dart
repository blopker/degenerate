// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentLinksRequestNameCollectionIndividual {const PostPaymentLinksRequestNameCollectionIndividual({required this.enabled, this.optional, });

factory PostPaymentLinksRequestNameCollectionIndividual.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestNameCollectionIndividual(
  enabled: json['enabled'] as bool,
  optional: json['optional'] as bool?,
); }

final bool enabled;

final bool? optional;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'optional': ?optional,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostPaymentLinksRequestNameCollectionIndividual copyWith({bool? enabled, bool Function()? optional, }) { return PostPaymentLinksRequestNameCollectionIndividual(
  enabled: enabled ?? this.enabled,
  optional: optional != null ? optional() : this.optional,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestNameCollectionIndividual &&
          enabled == other.enabled &&
          optional == other.optional; } 
@override int get hashCode { return Object.hash(enabled, optional); } 
@override String toString() { return 'PostPaymentLinksRequestNameCollectionIndividual(enabled: $enabled, optional: $optional)'; } 
 }
