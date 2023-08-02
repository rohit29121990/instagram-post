import 'package:flutter/material.dart';
import 'package:posts/utils/my_colors.dart';

import 'utils/responsive.dart';
import 'widgets/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> hashes = ['2023', 'TODAYISMONDAY', 'TOP', 'POPS!', 'WOW', 'ROW'];
  int favorate = 0;
  late Screens screen;

  @override
  void didChangeDependencies() {
    screen = ResponsiveWidget.screenSize(context);
    print('returned is:$screen');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: getScreenSize(context),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black54,
                size: 24,
              ),
              centerTitle: true,
              title: Text(
                '자유톡',
                style: TextStyle(
                    color: MyColors.h10,
                    fontSize: 16,
                    letterSpacing: -0.16,
                    fontWeight: FontWeight.w700),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              actions: const [
                Icon(
                  Icons.notifications_outlined,
                  color: Colors.black54,
                  size: 24,
                ),
                SizedBox(width: 16)
              ],
            ),
            body: Stack(
              children: [
                ListView(
                  primary: true,
                  shrinkWrap: true,
                  children: [
                    Post(
                      hashes: hashes,
                      name: '안녕 나 응애',
                      height: '165cm',
                      weight: '53kg',
                      imageUrl: 'assets/images/post_image.jpg',
                      profileImageUrl: 'assets/icons/circleav.png',
                      title: '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
                      disc:
                          '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어?\n\n후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아???\n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
                    ),
                    const Divider(),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: MyColors.background,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.image_outlined,
                            color: MyColors.n5,
                            size: 28,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            width: getScreenSize(context) - 84,
                            child: TextFormField(
                              decoration: InputDecoration.collapsed(
                                hintText: '댓글을 남겨주세요.',
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: MyColors.n5),
                              ),
                            ),
                          ),
                          Text(
                            '등록',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: MyColors.n5,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

  double getScreenSize(BuildContext context) {
    return screen == Screens.large
        ? 860
        : screen == Screens.medium
            ? 720
            : MediaQuery.of(context).size.width;
  }
}
