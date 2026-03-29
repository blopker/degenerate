// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition {const PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition._(this.value);

factory PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'hidden' => hidden,
  _ => PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition._(json),
}; }

static const PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition auto = PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition._('auto');

static const PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition hidden = PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition._('hidden');

static const List<PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition> values = [auto, hidden];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition($value)'; } 
 }
final class PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreement {const PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreement({required this.position});

factory PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreement.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreement(
  position: PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition.fromJson(json['position'] as String),
); }

final PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition position;

Map<String, dynamic> toJson() { return {
  'position': position.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('position'); } 
PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreement copyWith({PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreementPosition? position}) { return PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreement(
  position: position ?? this.position,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreement &&
          position == other.position; } 
@override int get hashCode { return position.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestConsentCollectionPaymentMethodReuseAgreement(position: $position)'; } 
 }
