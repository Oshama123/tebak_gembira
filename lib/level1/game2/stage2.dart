import 'package:flutter/material.dart';
import 'package:tebak_gembira/timer/countdown.dart';
import 'package:tebak_gembira/splash.dart';

class game2 extends StatelessWidget {
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
                      countdownDuration: 300,
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
                      'Selesaikan Puzzel Ini',
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
              padding: EdgeInsets.all(90),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame7p4D (13:227)
                    margin: EdgeInsets.all(6),
                  ),
                  TextButton(
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
                        color: Color.fromARGB(255, 228, 207, 16),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(
                        child: Text(
                          'Lanjut',
                          style: TextStyle(
                            fontFamily: 'Montserrat Alternates',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    // giveupbtn3xZ (13:223)
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
                            color: Color(0xffffffff),
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
