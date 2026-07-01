import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_images.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';
import 'package:fruithub/features/onboarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:
              (pageController.hasClients
                  ? pageController.page!.round()
                  : 0) !=
              0,
          image: Assets.resourcepageviewitem1image,
          backGroundImage:
              Assets.resourceimagepageviewitem1background,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fruit',
                style: TextStyles.cairoBold23.copyWith(
                  color: Color(0xff1B5E37),
                ),
              ),
              Text(
                'HUB',
                style: TextStyles.cairoBold23.copyWith(
                  color: Color(0xffF4A91F),
                ),
              ),
              Text(
                ' مرحبًا بك في',
                style: TextStyles.cairoBold23,
              ),
            ],
          ),
          subTitle:
              'اكتشف تجربة تسوق فريدة مع .FruitHUB استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية',
        ),
        PageViewItem(
          isVisible:
              (pageController.hasClients
                  ? pageController.page!.round()
                  : 0) ==
              0,
          image: Assets.resourcepageviewitem2image,
          backGroundImage:
              Assets.resourceimagepageviewitem2background,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ابحث وتسوق',
                style: TextStyles.cairoBold23,
              ),
            ],
          ),
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
