// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'registration_date_specs2.dart';final class PostAccountsAccountRequestCompanyRegistrationDateVariant2 {const PostAccountsAccountRequestCompanyRegistrationDateVariant2._(this.value);

factory PostAccountsAccountRequestCompanyRegistrationDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestCompanyRegistrationDateVariant2._(json),
}; }

static const PostAccountsAccountRequestCompanyRegistrationDateVariant2 $empty = PostAccountsAccountRequestCompanyRegistrationDateVariant2._('');

static const List<PostAccountsAccountRequestCompanyRegistrationDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestCompanyRegistrationDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCompanyRegistrationDateVariant2($value)'; } 
 }
typedef PostAccountsAccountRequestCompanyRegistrationDate = OneOf2<RegistrationDateSpecs2,PostAccountsAccountRequestCompanyRegistrationDateVariant2>;