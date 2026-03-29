// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostBillingCreditGrantsRequestApplicabilityConfigScopePrices {const PostBillingCreditGrantsRequestApplicabilityConfigScopePrices({required this.id});

factory PostBillingCreditGrantsRequestApplicabilityConfigScopePrices.fromJson(Map<String, dynamic> json) { return PostBillingCreditGrantsRequestApplicabilityConfigScopePrices(
  id: json['id'] as String,
); }

final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
PostBillingCreditGrantsRequestApplicabilityConfigScopePrices copyWith({String? id}) { return PostBillingCreditGrantsRequestApplicabilityConfigScopePrices(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingCreditGrantsRequestApplicabilityConfigScopePrices &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'PostBillingCreditGrantsRequestApplicabilityConfigScopePrices(id: $id)'; } 
 }
