// GENERATED CODE - DO NOT MODIFY BY HAND

/// Mandate collection method
final class MandateUsBankAccountCollectionMethod {const MandateUsBankAccountCollectionMethod._(this.value);

factory MandateUsBankAccountCollectionMethod.fromJson(String json) { return switch (json) {
  'paper' => paper,
  _ => MandateUsBankAccountCollectionMethod._(json),
}; }

static const MandateUsBankAccountCollectionMethod paper = MandateUsBankAccountCollectionMethod._('paper');

static const List<MandateUsBankAccountCollectionMethod> values = [paper];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandateUsBankAccountCollectionMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandateUsBankAccountCollectionMethod($value)'; } 
 }
/// 
final class MandateUsBankAccount {const MandateUsBankAccount({this.collectionMethod});

factory MandateUsBankAccount.fromJson(Map<String, dynamic> json) { return MandateUsBankAccount(
  collectionMethod: json['collection_method'] != null ? MandateUsBankAccountCollectionMethod.fromJson(json['collection_method'] as String) : null,
); }

/// Mandate collection method
final MandateUsBankAccountCollectionMethod? collectionMethod;

Map<String, dynamic> toJson() { return {
  if (collectionMethod != null) 'collection_method': collectionMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MandateUsBankAccount copyWith({MandateUsBankAccountCollectionMethod Function()? collectionMethod}) { return MandateUsBankAccount(
  collectionMethod: collectionMethod != null ? collectionMethod() : this.collectionMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MandateUsBankAccount &&
          collectionMethod == other.collectionMethod; } 
@override int get hashCode { return collectionMethod.hashCode; } 
@override String toString() { return 'MandateUsBankAccount(collectionMethod: $collectionMethod)'; } 
 }
