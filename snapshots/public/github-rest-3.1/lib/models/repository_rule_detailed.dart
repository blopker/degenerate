// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_rule_detailed_variant1.dart';import 'repository_rule_detailed_variant10.dart';import 'repository_rule_detailed_variant11.dart';import 'repository_rule_detailed_variant12.dart';import 'repository_rule_detailed_variant13.dart';import 'repository_rule_detailed_variant14.dart';import 'repository_rule_detailed_variant15.dart';import 'repository_rule_detailed_variant16.dart';import 'repository_rule_detailed_variant17.dart';import 'repository_rule_detailed_variant18.dart';import 'repository_rule_detailed_variant19.dart';import 'repository_rule_detailed_variant2.dart';import 'repository_rule_detailed_variant20.dart';import 'repository_rule_detailed_variant21.dart';import 'repository_rule_detailed_variant22.dart';import 'repository_rule_detailed_variant3.dart';import 'repository_rule_detailed_variant4.dart';import 'repository_rule_detailed_variant5.dart';import 'repository_rule_detailed_variant6.dart';import 'repository_rule_detailed_variant7.dart';import 'repository_rule_detailed_variant8.dart';import 'repository_rule_detailed_variant9.dart';/// A value that is one of: `RepositoryRuleDetailedVariant1`, `RepositoryRuleDetailedVariant2`, `RepositoryRuleDetailedVariant3`, `RepositoryRuleDetailedVariant4`, `RepositoryRuleDetailedVariant5`, `RepositoryRuleDetailedVariant6`, `RepositoryRuleDetailedVariant7`, `RepositoryRuleDetailedVariant8`, `RepositoryRuleDetailedVariant9`, `RepositoryRuleDetailedVariant10`, `RepositoryRuleDetailedVariant11`, `RepositoryRuleDetailedVariant12`, `RepositoryRuleDetailedVariant13`, `RepositoryRuleDetailedVariant14`, `RepositoryRuleDetailedVariant15`, `RepositoryRuleDetailedVariant16`, `RepositoryRuleDetailedVariant17`, `RepositoryRuleDetailedVariant18`, `RepositoryRuleDetailedVariant19`, `RepositoryRuleDetailedVariant20`, `RepositoryRuleDetailedVariant21`, `RepositoryRuleDetailedVariant22`.
sealed class RepositoryRuleDetailed {const RepositoryRuleDetailed();

factory RepositoryRuleDetailed.fromJson(Map<String, dynamic> json) {   if (RepositoryRuleDetailedVariant1.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant1(RepositoryRuleDetailedVariant1.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant2.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant2(RepositoryRuleDetailedVariant2.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant3.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant3(RepositoryRuleDetailedVariant3.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant4.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant4(RepositoryRuleDetailedVariant4.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant5.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant5(RepositoryRuleDetailedVariant5.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant6.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant6(RepositoryRuleDetailedVariant6.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant7.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant7(RepositoryRuleDetailedVariant7.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant8.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant8(RepositoryRuleDetailedVariant8.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant9.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant9(RepositoryRuleDetailedVariant9.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant10.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant10(RepositoryRuleDetailedVariant10.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant11.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant11(RepositoryRuleDetailedVariant11.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant12.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant12(RepositoryRuleDetailedVariant12.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant13.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant13(RepositoryRuleDetailedVariant13.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant14.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant14(RepositoryRuleDetailedVariant14.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant15.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant15(RepositoryRuleDetailedVariant15.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant16.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant16(RepositoryRuleDetailedVariant16.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant17.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant17(RepositoryRuleDetailedVariant17.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant18.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant18(RepositoryRuleDetailedVariant18.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant19.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant19(RepositoryRuleDetailedVariant19.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant20.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant20(RepositoryRuleDetailedVariant20.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant21.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant21(RepositoryRuleDetailedVariant21.fromJson(json));
  }
  if (RepositoryRuleDetailedVariant22.canParse(json)) {
    return RepositoryRuleDetailedRepositoryRuleDetailedVariant22(RepositoryRuleDetailedVariant22.fromJson(json));
  }
  return RepositoryRuleDetailed$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant1 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant1(this._value);

final RepositoryRuleDetailedVariant1 _value;

@override RepositoryRuleDetailedVariant1 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant1 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant1($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant2 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant2(this._value);

final RepositoryRuleDetailedVariant2 _value;

@override RepositoryRuleDetailedVariant2 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant2 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant2($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant3 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant3(this._value);

final RepositoryRuleDetailedVariant3 _value;

@override RepositoryRuleDetailedVariant3 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant3 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant3($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant4 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant4(this._value);

final RepositoryRuleDetailedVariant4 _value;

@override RepositoryRuleDetailedVariant4 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant4 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant4($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant5 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant5(this._value);

final RepositoryRuleDetailedVariant5 _value;

@override RepositoryRuleDetailedVariant5 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant5 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant5($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant6 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant6(this._value);

final RepositoryRuleDetailedVariant6 _value;

@override RepositoryRuleDetailedVariant6 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant6 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant6($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant7 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant7(this._value);

final RepositoryRuleDetailedVariant7 _value;

@override RepositoryRuleDetailedVariant7 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant7 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant7($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant8 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant8(this._value);

final RepositoryRuleDetailedVariant8 _value;

@override RepositoryRuleDetailedVariant8 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant8 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant8($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant9 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant9(this._value);

final RepositoryRuleDetailedVariant9 _value;

@override RepositoryRuleDetailedVariant9 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant9 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant9($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant10 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant10(this._value);

final RepositoryRuleDetailedVariant10 _value;

@override RepositoryRuleDetailedVariant10 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant10 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant10($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant11 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant11(this._value);

final RepositoryRuleDetailedVariant11 _value;

@override RepositoryRuleDetailedVariant11 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant11 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant11($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant12 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant12(this._value);

final RepositoryRuleDetailedVariant12 _value;

@override RepositoryRuleDetailedVariant12 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant12 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant12($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant13 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant13(this._value);

final RepositoryRuleDetailedVariant13 _value;

@override RepositoryRuleDetailedVariant13 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant13 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant13($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant14 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant14(this._value);

final RepositoryRuleDetailedVariant14 _value;

@override RepositoryRuleDetailedVariant14 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant14 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant14($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant15 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant15(this._value);

final RepositoryRuleDetailedVariant15 _value;

@override RepositoryRuleDetailedVariant15 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant15 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant15($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant16 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant16(this._value);

final RepositoryRuleDetailedVariant16 _value;

@override RepositoryRuleDetailedVariant16 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant16 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant16($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant17 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant17(this._value);

final RepositoryRuleDetailedVariant17 _value;

@override RepositoryRuleDetailedVariant17 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant17 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant17($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant18 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant18(this._value);

final RepositoryRuleDetailedVariant18 _value;

@override RepositoryRuleDetailedVariant18 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant18 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant18($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant19 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant19(this._value);

final RepositoryRuleDetailedVariant19 _value;

@override RepositoryRuleDetailedVariant19 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant19 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant19($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant20 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant20(this._value);

final RepositoryRuleDetailedVariant20 _value;

@override RepositoryRuleDetailedVariant20 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant20 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant20($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant21 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant21(this._value);

final RepositoryRuleDetailedVariant21 _value;

@override RepositoryRuleDetailedVariant21 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant21 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant21($_value)'; } 
 }
@immutable final class RepositoryRuleDetailedRepositoryRuleDetailedVariant22 extends RepositoryRuleDetailed {const RepositoryRuleDetailedRepositoryRuleDetailedVariant22(this._value);

final RepositoryRuleDetailedVariant22 _value;

@override RepositoryRuleDetailedVariant22 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailedRepositoryRuleDetailedVariant22 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.repositoryRuleDetailedVariant22($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class RepositoryRuleDetailed$Unknown extends RepositoryRuleDetailed {const RepositoryRuleDetailed$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleDetailed$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'RepositoryRuleDetailed.unknown($_value)'; } 
 }
