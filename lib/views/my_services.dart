import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:vruksha_portfolio/globals/app_colors.dart';
import 'package:vruksha_portfolio/globals/constants.dart';
import 'package:vruksha_portfolio/helper%20class/helper_class.dart';
import '../globals/app_text.dart';
import '../globals/app_text_styles.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool acheivement1 = false,
      acheivement2 = false,
      acheivement3 = false,
      acheivement4 = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                acheivement1 = value;
              });
            },
            child: buildAnimatedContainer(
              title: AppText.acheivement1,
              hover: acheivement1,
              acheivementDescription: AppText.acheivementDescription1,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                acheivement2 = value;
              });
            },
            child: buildAnimatedContainer(
              title: AppText.acheivement2,
              hover: acheivement2,
              acheivementDescription: AppText.acheivementDescription2,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                acheivement3 = value;
              });
            },
            child: buildAnimatedContainer(
              title: AppText.acheivement3,
              hover: acheivement3,
              acheivementDescription: AppText.acheivementDescription3,
            ),
          ),
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    acheivement1 = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: AppText.acheivement1,
                  hover: acheivement1,
                  acheivementDescription: AppText.acheivementDescription1,
                ),
              ),
             
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    acheivement2 = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: AppText.acheivement2,
                  hover: acheivement2,
                  acheivementDescription: AppText.acheivementDescription2,
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 26.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    acheivement3 = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: AppText.acheivement3,
                  hover: acheivement3,
                  acheivementDescription: AppText.acheivementDescription3,
                ),
              ),
              
             
            ],
          )
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    acheivement1 = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: AppText.acheivement1,
                  hover: acheivement1,
                  acheivementDescription: AppText.acheivementDescription1,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    acheivement2 = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: AppText.acheivement2,
                  hover: acheivement2,
                  acheivementDescription: AppText.acheivementDescription2,
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 26.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    acheivement3 = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: AppText.acheivement3,
                  hover: acheivement3,
                  acheivementDescription: AppText.acheivementDescription3,
                ),
              ),
           
             ],
          )
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.bgColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: AppText.my,
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: AppText.acheivements,
              style: AppTextStyles.headingStyles(
                  fontSize: 30.0, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String acheivementDescription,
    required bool hover,
    double width = 350,
    double hoverWidth = 360,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 220 : 210,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.montserratStyle(
                color: Colors.white, fontSize: 21.0),textAlign: TextAlign.start,
          ),
          Constants.sizedBox(height: 12.0),
          Text(
            acheivementDescription,
            style: AppTextStyles.normalStyle(fontSize: 14.0),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
