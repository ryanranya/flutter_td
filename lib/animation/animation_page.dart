import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertd/animation/animation_routeview.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  List<String> animationList = [
    "AnimatedContainer --> 在一段时间内逐渐改变其值的容器。",
    "AnimatedCrossFade --> 一个widget，在两个孩子之间交叉淡入，并同时调整他们的尺寸",
    "Hero --> 将其子项标记为hero动画候选的widget。",
    "AnimatedBuilder --> 用于构建动画的通用小部件。AnimatedBuilder在有多个widget希望有一个动画作为一个较大的建造函数部分时会非常有用。要使用AnimatedBuilder，只需构建widget并将其传给builder函数即可。",
    "DecoratedBoxTransition --> DecoratedBox的动画版本，可以给它的Decoration不同属性使用动画",
    "FadeTransition --> 对透明度使用动画的widget",
    "PositionedTransition --> Positioned的动画版本，它需要一个特定的动画来将孩子的位置从动画的生命周期的起始位置移到结束位置。",
    "RotationTransition --> 对widget使用旋转动画",
    "ScaleTransition --> 对widget使用缩放动画",
    "SizeTransition --> Animates its own size and clips and aligns the child.",
    "SlideTransition --> 对相对于其正常位置的某个位置之间使用动画",
    "AnimatedDefaultTextStyle --> 在文本样式切换时使用动画",
    "AnimatedListState --> 动画列表的state",
    "AnimatedModalBarrier --> 一个阻止用户与widget交互的widget",
    "AnimatedOpacity --> Opacity的动画版本，在给定的透明度变化时，自动地在给定的一段时间内改变孩子的Opacity",
    "AnimatedPhysicalModel --> PhysicalModel的动画版本",
    "AnimatedPositioned --> 动画版本的Positioned，每当给定位置的变化，自动在给定的时间内转换孩子的位置",
    "AnimatedSize --> 动画widget，当给定的孩子的大小变化时，它自动地在给定时间内转换它的大小。",
    "AnimatedWidget --> 当给定的Listenable改变值时，会重新构建该widget",
    "AnimatedWidgetBaseState --> 具有隐式动画的widget的基类"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("动画列表"),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 5, right: 5, top: 5),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.5,
            ),
            itemBuilder: (context, index) {
              return Container(child: animationCell(index));
            },
            itemCount: animationList.length,
          ),
        ));
  }

  Widget animationCell(int index) {
    return InkWell(
      onTap: (){
        AnimationPageRoutView.rout(index, context);
      },
      child: Container(
        margin: EdgeInsets.all(5),

        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://picsum.photos/500/500?random=${index}",
                  fit: BoxFit.fill,
                  width: double.infinity - 10,
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(90, 0, 0, 0),
                          Color.fromARGB(90, 105, 105, 105),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(animationList[index],style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
