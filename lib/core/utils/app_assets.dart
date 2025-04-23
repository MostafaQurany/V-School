class AppAssets {
  static String fontPoppins = "Poppins";
  // image
  static String pencilImageLoginScreen =
      _imagePath('pencil_image_login_screen.png');
  static String pencilsImageLoginScreen =
      _imagePath('pencils_image_login_screen.png');
  // icons
  static String parentsButtonIconLoginScreen =
      _iconPath('parents_button_icon_login_screen.png');
  static String teacherButtonIconLoginScreen =
      _iconPath('teacher_button_icon_login_screen.png');
  // icon
  static String attendanceIcon = _iconPath("assignment_icon.png");

  // svg

  static String locationIconSvg = _svgPath("location_icon.svg");
  static String calenderIconSvg = _svgPath("calender_icon.svg");
  static String assignmentIconSvg = _svgPath("assignment_icon.svg");
  static String schoolHolidayIconSvg = _svgPath("school_holiday_icon");
  static String resultIconSvg = _svgPath("result_icon.svg");
  static String quizIconSvg = _svgPath("quiz_icon.svg");
  static String examScheduleIconSvg = _svgPath("exam_schedule_icon.svg");
  static String classScheduleIconSvg = _svgPath("class_schedule_icon.svg");
  static String searchIconSvg = _svgPath("search_icon.svg");
  static String filterIconSvg = _svgPath("filter_icon.svg");

  // =================================================================
  static _imagePath(String imageName) => "assets/image/$imageName";
  static _iconPath(String iconName) => "assets/icons/$iconName";
  static _svgPath(String svgName) => "assets/svgs/$svgName";
}
