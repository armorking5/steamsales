import 'dart:convert';

import 'package:http/http.dart';

import 'wishlist_model.dart';

class HttpService {
  final String wishlistUrl =
      "https://armorsaleschecker.azurewebsites.net/api/getwishlistdata?code=VU5JjApQMGLtm8fTudRY4t3jW%2FR6oA4yubGHjSaZebX2DhxuBHW0UQ%3D%3D";

  Future<List<Wishlist>> getWishlists() async {
    Response res = await get(Uri.parse(wishlistUrl));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Wishlist> wishlists = body
          .map(
            (dynamic item) => Wishlist.fromJson(item),
          )
          .toList();

      return wishlists;
    } else {
      throw "Unable to retrieve Wishlists.";
    }
  }
}
