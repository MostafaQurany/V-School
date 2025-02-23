class AppAssets {
  static String fontPoppins = "Poppins";
  static String pencilImageLoginScreen =
      _imagePath('pencil_image_login_screen.png');
  static String pencilsImageLoginScreen =
      _imagePath('pencils_image_login_screen.png');

  static String parentsButtonIconLoginScreen =
      _iconPath('parents_button_icon.svg');
  static String teacherButtonIconLoginScreen =
      _iconPath('teacher_button_icon.svg');

  static _imagePath(String imagePath) => "assets/image/$imagePath";
  static _iconPath(String iconPath) => "assets/icons/$iconPath";
}
