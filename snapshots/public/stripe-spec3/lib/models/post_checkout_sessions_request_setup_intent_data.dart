// GENERATED CODE - DO NOT MODIFY BY HAND

/// A subset of parameters to be passed to SetupIntent creation for Checkout Sessions in `setup` mode.
final class PostCheckoutSessionsRequestSetupIntentData {const PostCheckoutSessionsRequestSetupIntentData({this.description, this.metadata, this.onBehalfOf, });

factory PostCheckoutSessionsRequestSetupIntentData.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestSetupIntentData(
  description: json['description'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  onBehalfOf: json['on_behalf_of'] as String?,
); }

final String? description;

final Map<String,String>? metadata;

final String? onBehalfOf;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'metadata': ?metadata,
  'on_behalf_of': ?onBehalfOf,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCheckoutSessionsRequestSetupIntentData copyWith({String Function()? description, Map<String, String> Function()? metadata, String Function()? onBehalfOf, }) { return PostCheckoutSessionsRequestSetupIntentData(
  description: description != null ? description() : this.description,
  metadata: metadata != null ? metadata() : this.metadata,
  onBehalfOf: onBehalfOf != null ? onBehalfOf() : this.onBehalfOf,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestSetupIntentData &&
          description == other.description &&
          metadata == other.metadata &&
          onBehalfOf == other.onBehalfOf; } 
@override int get hashCode { return Object.hash(description, metadata, onBehalfOf); } 
@override String toString() { return 'PostCheckoutSessionsRequestSetupIntentData(description: $description, metadata: $metadata, onBehalfOf: $onBehalfOf)'; } 
 }
