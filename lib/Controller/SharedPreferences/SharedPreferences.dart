
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesApp{
  SharedPreferencesApp._();
  static final SharedPreferencesApp _object = SharedPreferencesApp._();
  factory SharedPreferencesApp(){
    return _object;
  }
  late SharedPreferences _sharedPreferences;
  Future<void> MethodeInitSharedPref()async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }
  //DataUser
  Future<void> SaveIdUser({required String Idu})async{
    await _sharedPreferences.setBool('login', true);
    await _sharedPreferences.setString('IDu', Idu);
  }
  String get GetIdUser => _sharedPreferences.getString('IDu') ?? '1';
  bool    get  GetLlgin  => _sharedPreferences.getBool('login') ?? false;

  Future<void> SaveNameUser({required String NameUser})async{
    await _sharedPreferences.setString('NameUser', NameUser);
  }
  String get GetIdName => _sharedPreferences.getString('NameUser') ?? '';

  Future<void> SaveEmailUser({required String EmailUser})async{
    await _sharedPreferences.setString('EmailUser', EmailUser);
  }
  String get GetEmail => _sharedPreferences.getString('EmailUser') ?? '';

  Future<void> SaveNumberUser({required String NumberUser})async{
    await _sharedPreferences.setString('NumberUser', NumberUser);
  }
  String get GetNumberUser => _sharedPreferences.getString('NumberUser') ?? '';

  Future<void> SaveImageUser({required String ImageUser})async{
    await _sharedPreferences.setString('ImageUser', ImageUser);
  }
  String get ImageUser => _sharedPreferences.getString('ImageUser') ?? '';


  Future<void> SavecityUser({required String cityUser})async{
    await _sharedPreferences.setString('cityUser', cityUser);
  }
  String get   cityUser => _sharedPreferences.getString('cityUser') ?? '';


  Future<void> SavecontreUser({required String contreUser})async{
    await _sharedPreferences.setString('contreUser', contreUser);
  }
  String get contreUser => _sharedPreferences.getString('contreUser') ?? '';
  clearData()async{
    _sharedPreferences.clear();
  }

  String get FullPath => _sharedPreferences.getString('FullPath') ?? '';
  Setflullputh(path)async{
    _sharedPreferences.setString('FullPath',path);
  }
  String get FilePath => _sharedPreferences.getString('FilePath') ?? '';
  SetFilePath(path)async{
    _sharedPreferences.setString('FullPath',path);
  }
}