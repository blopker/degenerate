// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 {const PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(this.value);

factory PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(json),
}; }

static const PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 $empty = PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2._('');

static const List<PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2($value)'; } 
 }
typedef PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgent = OneOf2<String,PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2>;