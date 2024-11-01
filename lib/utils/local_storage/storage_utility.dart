import 'package:get_storage/get_storage.dart';

class KLocalStorage {


  late final  GetStorage _storage;

  static KLocalStorage? _instance;

  KLocalStorage._internal();

  factory KLocalStorage.instance() {
     _instance ??= KLocalStorage._internal();
     return _instance!;
  }
  static Future<void> init(String  bucketName) async {
    await GetStorage.init(bucketName);
    _instance = KLocalStorage._internal();
    _instance!._storage = GetStorage(bucketName);
  }





// Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

// Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

// Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}