
import 'package:hive/hive.dart';
part 'getcurrency_model.g.dart';
@HiveType(typeId: 0)
class CurrencyModel {
  @HiveField(0)
  int? _id;
  @HiveField(1)
  String? _name;
  @HiveField(2)
  String? _username;
  @HiveField(3)
  String? _email;
  @HiveField(4)
  Address? _address;
  @HiveField(5)
  String? _phone;
  @HiveField(6)
  String? _website;
  @HiveField(7)
  Company? _company;

  CurrencyModel(
      {int? id,
      String? name,
      String? username,
      String? email,
      Address? address,
      String? phone,
      String? website,
      Company? company}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (username != null) {
      this._username = username;
    }
    if (email != null) {
      this._email = email;
    }
    if (address != null) {
      this._address = address;
    }
    if (phone != null) {
      this._phone = phone;
    }
    if (website != null) {
      this._website = website;
    }
    if (company != null) {
      this._company = company;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get username => _username;
  set username(String? username) => _username = username;
  String? get email => _email;
  set email(String? email) => _email = email;
  Address? get address => _address;
  set address(Address? address) => _address = address;
  String? get phone => _phone;
  set phone(String? phone) => _phone = phone;
  String? get website => _website;
  set website(String? website) => _website = website;
  Company? get company => _company;
  set company(Company? company) => _company = company;

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _username = json['username'];
    _email = json['email'];
    _address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
    _phone = json['phone'];
    _website = json['website'];
    _company =
        json['company'] != null ? new Company.fromJson(json['company']) : null;
  }

}
@HiveType(typeId: 1)
class Address {
  @HiveField(0)
  String? _street;
  @HiveField(1)
  String? _suite;
  @HiveField(2)
  String? _city;
  @HiveField(3)
  String? _zipcode;
  @HiveField(4)
  Geo? _geo;

  Address(
      {String? street,
      String? suite,
      String? city,
      String? zipcode,
      Geo? geo}) {
    if (street != null) {
      this._street = street;
    }
    if (suite != null) {
      this._suite = suite;
    }
    if (city != null) {
      this._city = city;
    }
    if (zipcode != null) {
      this._zipcode = zipcode;
    }
    if (geo != null) {
      this._geo = geo;
    }
  }

  String? get street => _street;
  set street(String? street) => _street = street;
  String? get suite => _suite;
  set suite(String? suite) => _suite = suite;
  String? get city => _city;
  set city(String? city) => _city = city;
  String? get zipcode => _zipcode;
  set zipcode(String? zipcode) => _zipcode = zipcode;
  Geo? get geo => _geo;
  set geo(Geo? geo) => _geo = geo;

  Address.fromJson(Map<String, dynamic> json) {
    _street = json['street'];
    _suite = json['suite'];
    _city = json['city'];
    _zipcode = json['zipcode'];
    _geo = json['geo'] != null ? new Geo.fromJson(json['geo']) : null;
  }

  
   
}
@HiveType(typeId: 2)
class Geo {
  @HiveField(0)
  String? _lat;
  @HiveField(1)
  String? _lng;

  Geo({String? lat, String? lng}) {
    if (lat != null) {
      this._lat = lat;
    }
    if (lng != null) {
      this._lng = lng;
    }
  }

  String? get lat => _lat;
  set lat(String? lat) => _lat = lat;
  String? get lng => _lng;
  set lng(String? lng) => _lng = lng;

  Geo.fromJson(Map<String, dynamic> json) {
    _lat = json['lat'];
    _lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this._lat;
    data['lng'] = this._lng;
    return data;
  }
}
@HiveType(typeId: 3)
class Company {
  @HiveField(0)
  String? _name;
  @HiveField(1)
  String? _catchPhrase;
  @HiveField(2)
  String? _bs;

  Company({String? name, String? catchPhrase, String? bs}) {
    if (name != null) {
      this._name = name;
    }
    if (catchPhrase != null) {
      this._catchPhrase = catchPhrase;
    }
    if (bs != null) {
      this._bs = bs;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  String? get catchPhrase => _catchPhrase;
  set catchPhrase(String? catchPhrase) => _catchPhrase = catchPhrase;
  String? get bs => _bs;
  set bs(String? bs) => _bs = bs;

  Company.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _catchPhrase = json['catchPhrase'];
    _bs = json['bs'];
  }

 
}
