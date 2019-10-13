import 'package:flutter/material.dart';
import 'Index/Index.dart';

class LaunchScreenAnimation extends StatefulWidget {
  @override
  _LaunchScreenAnimationState createState() => _LaunchScreenAnimationState();
}

class _LaunchScreenAnimationState extends State<LaunchScreenAnimation> with SingleTickerProviderStateMixin {
  AnimationController _animationControler;
  Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationControler = AnimationController(
      duration: Duration(
        seconds: 1 //执行4秒
        ),
      vsync: this,
    );

    //动画配置 设置开始点和结束点
    _animation = Tween(begin: 0.1, end: 1.0).animate(_animationControler);
    //监听动画
    _animation.addStatusListener((staus){
      if (staus == AnimationStatus.completed){
        //动画完成之后进行页面跳转
        Navigator.of(context).pushAndRemoveUntil(
          //跳转到 IndexPage 界面
          MaterialPageRoute(builder: (context){
            return IndexPage();
          }), (route) => route == null);
      }
    });

    //让动画开始执行
    _animationControler.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FadeTransition(
          opacity: _animation,
          //设置图片 填充方式：充满界面
          child: Image.asset("images/startImage.png", fit: BoxFit.cover),
      ),
    );
  }
}

