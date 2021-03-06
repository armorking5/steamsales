import 'package:flutter/foundation.dart';

class Wishlist {
  final String name;
  final bool free;

  Wishlist({
    @required required this.name,
    @required required this.free,
  });

  factory Wishlist.fromJson(Map<String, dynamic> json) {
    return Wishlist(
      free: json['free'] as bool,
      name: json['name'] as String,
    );
  }
}
