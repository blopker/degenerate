// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_challenge_ttl_value.dart';/// Specify how long a visitor is allowed access to your site after successfully completing a challenge (such as a CAPTCHA). After the TTL has expired the visitor will have to complete a new challenge. We recommend a 15 - 45 minute setting and will attempt to honor any setting above 45 minutes. (https://support.cloudflare.com/hc/en-us/articles/200170136).
@immutable final class ZonesChallengeTtlRequest {const ZonesChallengeTtlRequest({required this.id, required this.value, });

factory ZonesChallengeTtlRequest.fromJson(Map<String, dynamic> json) {return ZonesChallengeTtlRequest(
  id: json['id'],
  value: ZonesChallengeTtlValue.fromJson((json['value'] as num).toDouble()),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesChallengeTtlValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesChallengeTtlRequest copyWith({dynamic Function()? id, ZonesChallengeTtlValue? value, }) {return ZonesChallengeTtlRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesChallengeTtlRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesChallengeTtlRequest(id: $id, value: $value)';}
}
