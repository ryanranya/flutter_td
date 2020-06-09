import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatelessWidget {
  final List<String> imageURL;

  SwiperPage(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return BannerContainer();
  }

  Widget BannerContainer() {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: bannerSwiper(),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 211, 211, 211),
              offset: Offset(-1.0, 1.0),
              blurRadius: 10.0,
              spreadRadius: 5),
        ],
      ),
    );
  }

//轮播试图三方Swiper
  Widget bannerSwiper() {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          imageURL[index],
          fit: BoxFit.cover,
        );
      },
      onTap: (index) {
        print("click${index}");
      },
      pagination: SwiperPagination(
        builder: SwiperCustomPagination(
            builder: (BuildContext context, SwiperPluginConfig config) {
          return constrainedBox(context, config);
        }),
      ),
      itemCount: imageURL.length,
      autoplay: true,
    );
  }

// 轮播试图pageIndex设置
  Widget constrainedBox(BuildContext context, SwiperPluginConfig config) {
    return ConstrainedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
              decoration: BoxDecoration(
                  color: Color.fromARGB(190, 128, 128, 128),
                  borderRadius: BorderRadius.circular(8)),
              child: DotSwiperPaginationBuilder(
                      color: Color.fromARGB(255, 192, 192, 192),
                      activeColor: Colors.white,
                      size: 6.0,
                      activeSize: 6.0)
                  .build(context, config),
            ),
          )
        ],
      ),
      constraints: BoxConstraints.expand(height: 16),
    );
  }
}
