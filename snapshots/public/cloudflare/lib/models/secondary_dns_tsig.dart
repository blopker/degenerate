// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_algo.dart';import 'secondary_dns_schemas_identifier.dart';import 'secondary_dns_schemas_name.dart';import 'secondary_dns_secret.dart';@immutable final class SecondaryDnsTsig {const SecondaryDnsTsig({required this.algo, required this.id, required this.name, required this.secret, });

factory SecondaryDnsTsig.fromJson(Map<String, dynamic> json) {return SecondaryDnsTsig(
  algo: SecondaryDnsAlgo.fromJson(json['algo'] as String),
  id: SecondaryDnsSchemasIdentifier.fromJson(json['id'] as String),
  name: SecondaryDnsSchemasName.fromJson(json['name'] as String),
  secret: SecondaryDnsSecret.fromJson(json['secret'] as String),
);}

/// TSIG algorithm.
final SecondaryDnsAlgo algo;

final SecondaryDnsSchemasIdentifier id;

/// TSIG key name.
final SecondaryDnsSchemasName name;

/// TSIG secret.
final SecondaryDnsSecret secret;

Map<String, dynamic> toJson() {return {
  'algo': algo.toJson(),
  'id': id.toJson(),
  'name': name.toJson(),
  'secret': secret.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('algo') &&
      json.containsKey('id') &&
      json.containsKey('name') &&
      json.containsKey('secret');}
SecondaryDnsTsig copyWith({SecondaryDnsAlgo? algo, SecondaryDnsSchemasIdentifier? id, SecondaryDnsSchemasName? name, SecondaryDnsSecret? secret, }) {return SecondaryDnsTsig(
  algo: algo ?? this.algo,
  id: id ?? this.id,
  name: name ?? this.name,
  secret: secret ?? this.secret,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is SecondaryDnsTsig &&
          algo == other.algo &&
          id == other.id &&
          name == other.name &&
          secret == other.secret;}
@override int get hashCode {return Object.hash(algo, id, name, secret);}
@override String toString() {return 'SecondaryDnsTsig(algo: $algo, id: $id, name: $name, secret: $secret)';}
}
