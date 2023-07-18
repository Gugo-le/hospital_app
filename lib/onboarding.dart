import 'package:flutter/material.dart';
import 'pages/home.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController nextpage = PageController();
  int pagenumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            pagenumber = value;
          });
        },
        controller: nextpage,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 160,
              ),
              Image.asset("assets/img/10130.jpg"),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "병원 어디로 가?",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                textAlign: TextAlign.center,
                "돌아다니는 로봇 의사(무빙이)가 길거리를 돌아다니면서\n 간단히 진료 받고 싶은 환자들의 상태를 파악해줍니다",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontFamily: "DoHyeon",
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  nextpage.animateToPage(1,
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 120,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: const Center(
                    child: Text(
                      "다음",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: "DoHyeon",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset("assets/img/3324089.jpg"),
              const Text(
                "감기 진단 알고리즘",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                textAlign: TextAlign.center,
                "내장 되어있는 감기 진단 알고리즘으로 밖에서도 빠르고\n 간단하게 자신의 상태를 확인 할 수 있습니다.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "DoHyeon",
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              InkWell(
                onTap: () {
                  nextpage.animateToPage(2,
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 120,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: const Center(
                    child: Text(
                      "다음",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: "DoHyeon",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset("assets/img/2104.jpg"),
              const Text(
                "감기 인식 인공지능",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                textAlign: TextAlign.center,
                "내장 되어있는 감기 인식 인공지능으로 환자의 목소리를\n 파악해 목감기에 걸렸는지 확인 할 수 있습니다.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "DoHyeon",
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StartPage()),
                  );
                },
                child: Container(
                  width: 165,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: const Center(
                    child: Text(
                      "시작하기",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: "DoHyeon",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
