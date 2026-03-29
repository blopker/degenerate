// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod {const PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod._(this.value);

factory PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod.fromJson(String json) { return switch (json) {
  '' => $empty,
  'paper' => paper,
  _ => PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod $empty = PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod._('');

static const PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod paper = PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod._('paper');

static const List<PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod> values = [$empty, paper];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam28MandateOptions {const PaymentIntentPaymentMethodOptionsParam28MandateOptions({this.collectionMethod});

factory PaymentIntentPaymentMethodOptionsParam28MandateOptions.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam28MandateOptions(
  collectionMethod: json['collection_method'] != null ? PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod.fromJson(json['collection_method'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod? collectionMethod;

Map<String, dynamic> toJson() { return {
  if (collectionMethod != null) 'collection_method': collectionMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'collection_method'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam28MandateOptions copyWith({PaymentIntentPaymentMethodOptionsParam28MandateOptionsCollectionMethod Function()? collectionMethod}) { return PaymentIntentPaymentMethodOptionsParam28MandateOptions(
  collectionMethod: collectionMethod != null ? collectionMethod() : this.collectionMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam28MandateOptions &&
          collectionMethod == other.collectionMethod; } 
@override int get hashCode { return collectionMethod.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam28MandateOptions(collectionMethod: $collectionMethod)'; } 
 }
