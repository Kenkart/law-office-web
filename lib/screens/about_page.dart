import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'About Us',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Law Office Sugiantoro & Associates yang didirikan oleh Kevin Sugiantoro sendiri bertujuan untuk memberikan pelayanan hukum yang berkualitas maksimal, komprehensif, efektif, dan efisien untuk memenuhi segala kebutuhan Anda dalam menyelesaikan setiap sengketa hukum dengan menggunakan kemampuan dan keahlian yang telah diperolehnya selama ini.\nOleh karena itu, Law Office Sugiantoro & Associates menyediakan banyak layanan hukum di berbagai bidang praktik hukum termasuk namun tidak terbatas pada: Kepailitan dan Penundaan Kewajiban Pembayaran Utang, Hukum Perdata/ Dagang, Hukum Pidana, Hukum Perbankan, Hukum Perusahaan, Hukum Bisnis, Arbitrase & Alternatif Penyelesaian Sengketa dan masih banyak lainnya.\nKantor hukum kami menjunjung tinggi kebutuhan dan kepentingan klien kami dan memberikan hasil secara konkrit dan nyata.',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 500),
      ],
    );
  }
}
