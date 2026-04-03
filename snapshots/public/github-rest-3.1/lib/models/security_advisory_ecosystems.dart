// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The package's language or package management ecosystem.
@immutable final class SecurityAdvisoryEcosystems {const SecurityAdvisoryEcosystems._(this.value);

factory SecurityAdvisoryEcosystems.fromJson(String json) { return switch (json) {
  'rubygems' => rubygems,
  'npm' => npm,
  'pip' => pip,
  'maven' => maven,
  'nuget' => nuget,
  'composer' => composer,
  'go' => go,
  'rust' => rust,
  'erlang' => erlang,
  'actions' => actions,
  'pub' => pub,
  'other' => $other,
  'swift' => swift,
  _ => SecurityAdvisoryEcosystems._(json),
}; }

static const SecurityAdvisoryEcosystems rubygems = SecurityAdvisoryEcosystems._('rubygems');

static const SecurityAdvisoryEcosystems npm = SecurityAdvisoryEcosystems._('npm');

static const SecurityAdvisoryEcosystems pip = SecurityAdvisoryEcosystems._('pip');

static const SecurityAdvisoryEcosystems maven = SecurityAdvisoryEcosystems._('maven');

static const SecurityAdvisoryEcosystems nuget = SecurityAdvisoryEcosystems._('nuget');

static const SecurityAdvisoryEcosystems composer = SecurityAdvisoryEcosystems._('composer');

static const SecurityAdvisoryEcosystems go = SecurityAdvisoryEcosystems._('go');

static const SecurityAdvisoryEcosystems rust = SecurityAdvisoryEcosystems._('rust');

static const SecurityAdvisoryEcosystems erlang = SecurityAdvisoryEcosystems._('erlang');

static const SecurityAdvisoryEcosystems actions = SecurityAdvisoryEcosystems._('actions');

static const SecurityAdvisoryEcosystems pub = SecurityAdvisoryEcosystems._('pub');

static const SecurityAdvisoryEcosystems $other = SecurityAdvisoryEcosystems._('other');

static const SecurityAdvisoryEcosystems swift = SecurityAdvisoryEcosystems._('swift');

static const List<SecurityAdvisoryEcosystems> values = [rubygems, npm, pip, maven, nuget, composer, go, rust, erlang, actions, pub, $other, swift];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoryEcosystems && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecurityAdvisoryEcosystems($value)'; } 
 }
