import 'package:firedart/firedart.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveStore extends TokenStore {
  static const keyToken = "auth_token";
  final Box _box;
  HiveStore._internal(this._box);

  static Future<HiveStore> create() async {
    // Make sure you call both:
    // Hive.init(storePath);
    // Hive.registerAdapter(TokenAdapter(), adapterId);

    var box = await Hive.openBox("auth_store",
        compactionStrategy: (entries, deletedEntries) => deletedEntries > 50);
    return HiveStore._internal(box);
  }

  @override
  void delete() {
    _box.delete(keyToken);
  }

  @override
  Token? read() {
    return _box.get(keyToken);
  }

  @override
  void write(Token? token) {
    _box.put(keyToken, token);
  }
}