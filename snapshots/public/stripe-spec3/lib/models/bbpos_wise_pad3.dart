// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bbpos_wise_pad3_splashscreen.dart';@immutable final class BbposWisePad3 {const BbposWisePad3({this.splashscreen});

factory BbposWisePad3.fromJson(Map<String, dynamic> json) {return BbposWisePad3(
  splashscreen: json['splashscreen'] != null ? BbposWisePad3Splashscreen.fromJson(json['splashscreen']) : null,
);}

final BbposWisePad3Splashscreen? splashscreen;

Map<String, dynamic> toJson() {return {
  if (splashscreen != null) 'splashscreen': splashscreen?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'splashscreen'}.contains(key));}
BbposWisePad3 copyWith({BbposWisePad3Splashscreen? Function()? splashscreen}) {return BbposWisePad3(
  splashscreen: splashscreen != null ? splashscreen() : this.splashscreen,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is BbposWisePad3 &&
          splashscreen == other.splashscreen;}
@override int get hashCode {return splashscreen.hashCode;}
@override String toString() {return 'BbposWisePad3(splashscreen: $splashscreen)';}
}
