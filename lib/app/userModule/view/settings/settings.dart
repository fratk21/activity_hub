import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:toplulugum/core/utils/colors.dart';
import 'package:toplulugum/core/widgets/sizedbox.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  Widget svgCode = RandomAvatar('saytoonz', height: 50, width: 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.94),
      appBar: AppBar(
        title: Text(
          "Ayarlar",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // user card
              //  SimpleUserCard(
              //    userName: "Nom de l'utilisateur",
              //    userProfilePic: AssetImage("assets/Images/login.png"),
              //  ),
              SettingsGroup(
                settingsGroupTitle: "Genel Ayarlar",
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.pencil_outline,
                    iconStyle: IconStyle(),
                    title: 'Profili Düzenle',
                    subtitle: "Ad & Soyad & Avatar",
                    titleMaxLine: 1,
                    subtitleMaxLine: 1,
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.paperclip,
                    iconStyle: IconStyle(
                      backgroundColor: AppColors.dpurple,
                    ),
                    title: 'Topluluk Oluştur',
                    titleMaxLine: 1,
                    subtitleMaxLine: 1,
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.settings,
                    iconStyle: IconStyle(
                      backgroundColor: AppColors.green,
                    ),
                    title: 'Topluluk Ayarları',
                    subtitle: "Üye Olduğunuz Toplulukların Ayarları ",
                    titleMaxLine: 1,
                    subtitleMaxLine: 1,
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.fingerprint,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.red,
                    ),
                    title: 'Kullanım Sözleşmesi',
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.info_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.purple,
                    ),
                    title: 'Hakkımızda',
                  ),
                ],
              ),
              // You can add a settings title
              SettingsGroup(
                settingsGroupTitle: "Hesap Ayarları",
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.repeat,
                    title: "Emaili Değiştir",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.lock_circle,
                    title: "Şifreni Değiştir",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.exit_to_app_rounded,
                    title: "Çıkış Yap",
                  ),
                ],
              ),
              SettingsGroup(
                settingsGroupTitle: "Hesap Kaldırma",
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.delete_solid,
                    title: "Hesabımı Sil",
                    subtitle: "Hesabınıza Ait Tüm Veriler Silinecektir",
                    titleStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              sizedBoxH(50)
            ],
          ),
        ),
      ),
    );
  }
}
