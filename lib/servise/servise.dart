import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:localdbapp/model/getcurrency_model.dart';
import 'package:path_provider/path_provider.dart';

class GetCurrencyModel {
  static Box<CurrencyModel>? currencyBox;
  static Future getcurrency() async {
    await OpenBox();
    Response response =
        await Dio().get("https://jsonplaceholder.typicode.com/users");
    try {
      if (response.statusCode == 200) {
        var resData = (response.data as List)
            .map((e) => CurrencyModel.fromJson(e))
            .toList();
        await putToBox(resData);
        return currencyBox;
      }
    } catch (e) {
      return e.toString();
    }
  }

  static OpenBox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    currencyBox = await Hive.openBox("currency");
  }

  static putToBox(List<CurrencyModel> data) async {
    currencyBox!.clear();
    for (CurrencyModel element in data) {
      currencyBox!.add(element);
    }
  }

  static void registerAdapter() {
    Hive.registerAdapter(CurrencyModelAdapter());
    Hive.registerAdapter(AddressAdapter());
    Hive.registerAdapter(GeoAdapter());
    Hive.registerAdapter(CompanyAdapter());
  }
}
