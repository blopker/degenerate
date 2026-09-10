// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_rocket_loader_value.dart';/// Rocket Loader is a general-purpose asynchronous JavaScript optimisation that prioritises rendering your content while loading your site's Javascript asynchronously. Turning on Rocket Loader will immediately improve a web page's rendering time sometimes measured as Time to First Paint (TTFP), and also the `window.onload` time (assuming there is JavaScript on the page). This can have a positive impact on your Google search ranking. When turned on, Rocket Loader will automatically defer the loading of all Javascript referenced in your HTML, with no configuration required. Refer to [Understanding Rocket Loader](https://support.cloudflare.com/hc/articles/200168056) for more information.
@immutable final class ZonesSchemasRocketLoaderRequest {const ZonesSchemasRocketLoaderRequest({required this.id, required this.value, });

factory ZonesSchemasRocketLoaderRequest.fromJson(Map<String, dynamic> json) {return ZonesSchemasRocketLoaderRequest(
  id: json['id'],
  value: ZonesRocketLoaderValue.fromJson(json['value'] as String),
);}

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesRocketLoaderValue value;

Map<String, dynamic> toJson() {return {
  'id': id,
  'value': value.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('id') &&
      json.containsKey('value');}
ZonesSchemasRocketLoaderRequest copyWith({dynamic Function()? id, ZonesRocketLoaderValue? value, }) {return ZonesSchemasRocketLoaderRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesSchemasRocketLoaderRequest &&
          id == other.id &&
          value == other.value;}
@override int get hashCode {return Object.hash(id, value);}
@override String toString() {return 'ZonesSchemasRocketLoaderRequest(id: $id, value: $value)';}
}
