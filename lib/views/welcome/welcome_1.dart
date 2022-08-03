import 'package:expektasi/views/home/home.dart';
import 'package:expektasi/core/utils/navigator_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class WelcomeOneView extends StatefulWidget {
  const WelcomeOneView({Key? key}) : super(key: key);

  @override
  State<WelcomeOneView> createState() => _WelcomeOneViewState();
}

class _WelcomeOneViewState extends State<WelcomeOneView> {
  List<Slide> slides = [];

  late Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: "EXPEKTASI",
          styleTitle: TextStyle(
            color: Color(0xffFDD100),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        description:
        "Belanja Puas, Harga Pas",
        styleDescription: TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w500,
        ),
        pathImage: "images/1.png",
        //   widthImage : 400,
        //   heightImage : 400,
        // backgroundColor: Colors.white
      ),
    );
    slides.add(
      Slide(
        title: "Thousand of Product",
        styleTitle: TextStyle(
          color: Color(0xffFDD100),
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        description:
        "Bingung pilih produk?\n Expektasi menyediakan ribuan produk, yuk cek!",
        styleDescription: TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        pathImage: "images/2.png",
      ),
    );
    slides.add(
      Slide(
        title: "Easy Pay",
        styleTitle: TextStyle(
          color: Color(0xffFDD100),
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        description:
        "Bayar instant tanpa ribet.",
        styleDescription: TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        pathImage: "images/3.png",
      ),
    );
  }
  Widget renderNextBtn() {
    return Text(
      'NEXT',
      style: TextStyle(
        color: Color(0xffFDD100),
        fontWeight: FontWeight.w700
      ),
    );
  }
  Widget renderDoneBtn() {
    return Center(
      child: Container(
        width: double.infinity,
        child: Text(
          'Ayo Mulai Belanja!',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700
          ),
        ),
      ),
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffFDD100)),
    );
  }

  Widget renderSkipBtn() {
    return Text(
      'SKIP',
      style: TextStyle(
          color: Color(0xffFDD100),
          fontWeight: FontWeight.w700
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    // goRemove(
    //   HomeView()
    // );
    Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeView()),
        ModalRoute.withName('/')
        );
    // goPush(
    //     HomeView()
    // );
  }

  List<Widget> renderListCustomTabs() {
    return List.generate(
      slides.length,
          (index) => SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: const EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Image.asset(
                  slides[index].pathImage!,
                  width: 300.0,
                  height: 400.0,
                  fit: BoxFit.fitWidth  ,
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                child: Column(
                  children: [
                    Text(
                      slides[index].title!,
                      style: slides[index].styleTitle,
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                    Text(
                      slides[index].description ?? '',
                      style: slides[index].styleDescription,
                      textAlign: TextAlign.center,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return IntroSlider(
      renderNextBtn: renderNextBtn(),
      renderSkipBtn: renderSkipBtn(),
      renderDoneBtn: renderDoneBtn(),
      onDonePress: onDonePress,
      doneButtonStyle: myButtonStyle(),

      // colorActiveDot: const Color(0xff948B8B),
      colorDot: Color(0xff948B8B),
      sizeDot: 10.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,


      listCustomTabs: renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        goToTab = refFunc;
      },

    );
  }
}
