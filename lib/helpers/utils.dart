import 'package:hospital/helpers/iconhelper.dart';
import 'package:hospital/models/category.dart';
import 'appcolors.dart';

class Utils {
  static var mainAppNav;

  static List<Category> getMockedCategories() {
    return [
      Category(name: "삼성제일소아청소년과의원", imgName: "blur", subCategories: []), // 1
      Category(name: "한림대학교동탄성심병원", imgName: "blur", subCategories: []), // 2
      Category(name: "연세프라임이비인후과의원", imgName: "blur", subCategories: []), // 3
      Category(name: "솔빛소아청소년과의원", imgName: "blur", subCategories: []), // 4
      Category(name: "상쾌한이비인후과", imgName: "blur", subCategories: []), // 5
      Category(name: "동탄탑내과의원", imgName: "blur", subCategories: []), // 6
      Category(name: "에이치원프라자약국", imgName: "phr", subCategories: []), // 7
      Category(name: "동탄하나약국", imgName: "phr", subCategories: []), // 8
      Category(name: "자연온누리약국", imgName: "phr", subCategories: []), // 9
      Category(name: "판도라약국", imgName: "phr", subCategories: []), // 10
    ];
  }
}
