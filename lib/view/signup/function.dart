import 'package:toplulugum/services/auth_service.dart';

Future<String?> registerWithEmailAndPassword(_passcontroller, _repasscontroller,
    _namecontroller, _mailcontroller) async {
  String e;
  if (_passcontroller.text != _repasscontroller.text) {
    e = "Şifreler uyuşmuyor";

    return e;
  }

  if (_namecontroller.text.isEmpty ||
      _mailcontroller.text.isEmpty ||
      _passcontroller.text.isEmpty) {
    e = "Lütfen tüm alanları doldurun";

    return e;
  }

  String? registerError = await AuthService().registerWithEmailAndPassword(
    _namecontroller.text,
    _mailcontroller.text,
    _passcontroller.text,
  );

  if (registerError != null) {
    print("Kayıt hatası: $registerError");
  } else {
    print("Kayıt başarılı");
  }
  return registerError;
}
