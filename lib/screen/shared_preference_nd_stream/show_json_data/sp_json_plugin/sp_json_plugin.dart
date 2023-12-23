import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../stream_data/object_data.dart';

class SpJsonPlugin{

  StreamController<Person> spJsonDataController = StreamController<Person>.broadcast();

  Future<void> setJson(Person person) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonCode = jsonEncode(person);
    await prefs.setString("stringJson", jsonCode);
    // spJsonDataController.add(jsonCode as Person);
  }

  Future<void> getJson() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringJson = prefs.getString("stringJson").toString();
    Person fnDecode = Person.fromJson(jsonDecode(stringJson));
    spJsonDataController.add(fnDecode);
  }
  // return AddressDataEntity.fromJson(json.decode(_prefs.getString(setDefaultAddressKey).toString()));
}