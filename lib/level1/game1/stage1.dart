import 'package:flutter/material.dart';
import 'package:tebak_gembira/timer/countdown.dart';
import 'package:tebak_gembira/splash.dart';
import 'package:tebak_gembira/pop-upCostum/true.dart';
import 'package:tebak_gembira/pop-upCostum/false.dart';

class game1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff6be8fa),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupcsiu66H (Nq2mAqLxEqQwmhm5GBcsiu)
              padding: EdgeInsets.fromLTRB(19, 46, 19, 35),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: CountdownProgressBar(
                      countdownDuration: 10,
                    ),
                  ),
                  Container(
                    // intersectUcd (58:18)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 36),
                    width: 322,
                    height: 322,
                    child: Image.asset(
                      'assets/images/game1.png',
                      width: 322,
                      height: 322,
                    ),
                  ),
                  Container(
                    // selesaikanpuzzelinibBT (13:132)

                    child: Text(
                      'Gambar Apakah Ini?',
                      style: TextStyle(
                        fontFamily: 'Montserrat Alternates',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 1.1289999485,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupxngmtgM (Nq2m2Avij7Rx4mT9FbXNGM)
              padding: EdgeInsets.all(50),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        //jawaban A dan Jawaban B
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return rightAnswer();
                                  },
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff403f3f)),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Center(
                                  child: Text(
                                    'A. Keluarga Besar',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Alternates',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff6b6b6b)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return falseAnswer();
                                  },
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff403f3f)),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Center(
                                  child: Text(
                                    'B. Ayah',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Alternates',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff6b6b6b)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        //jawaban C dan Jawaban D
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Container(
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return falseAnswer();
                                  },
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff403f3f)),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Center(
                                  child: Text(
                                    'C. Kucing',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Alternates',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff6b6b6b)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          Container(
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return falseAnswer();
                                  },
                                );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff403f3f)),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Center(
                                  child: Text(
                                    'D. Si Budi',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Alternates',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff6b6b6b)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => splash(),
                            ));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Color(0xffd41c1c),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(
                          child: Text(
                            'Menyerah',
                            style: TextStyle(
                              fontFamily: 'Montserrat Alternates',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1.1289999485,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
