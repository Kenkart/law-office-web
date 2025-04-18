import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/service_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/business_card_front.jpg'),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.all(50),
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'About Us',
                style: GoogleFonts.montserrat(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child:
                            Image.asset('assets/logo.jpg', fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Solusi Hukum Terpercaya dan Efektif',
                            style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Law Office Sugiantoro & Associates yang didirikan oleh Kevin Sugiantoro sendiri bertujuan untuk memberikan pelayanan hukum yang berkualitas maksimal, komprehensif, efektif, dan efisien untuk memenuhi segala kebutuhan Anda dalam menyelesaikan setiap sengketa hukum dengan menggunakan kemampuan dan keahlian yang telah diperolehnya selama ini.',
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: Colors.black54,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () => context.go('/about'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                            ),
                            child: const Text('Learn More',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Our Goal",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                constraints: BoxConstraints(maxWidth: 1000),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kantor hukum kami didirikan dengan tujuan utama untuk memberikan klien kami solusi yang jelas dan efisien yang dapat mengakomodasi kebutuhan hukum mereka. Kami menyesuaikan setiap langkah layanan kami untuk memberikan klien kami hasil terbaik untuk kepentingan mereka.",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Kevin Sugiantoro telah aktif melakukan advokasi dan menekuni kegiatan praktik hukum sejak masa kuliahnya yaitu tahun 2016 di beberapa firma hukum Jakarta yang ternama seperti Tandra & Associates dan Johny Sibarani & Rekan dimana memiliki banyak pengalaman dalam menangani berbagai sengketa hukum baik litigasi maupun non litigasi. Beliau merupakan Alumni Fakultas Hukum Universitas Bung Karno Jakarta yang berhasil menyelesaikan studinya sebagai Sarjana Hukum pada tahun 2020 dan mengambil Sumpah Advokat pada bulan Januari tahun 2024. Selain menekuni sebagai advokat, beliau kini masih aktif sebagai salah satu Legal Consultant salah satu perusahaan nasional dan terbesar di Jawa Timur yaitu PT Maspion, Maspion Square dan Maspion IT.\nBerbekal ilmu dan pengalaman yang diperolehnya selama bertahun-tahun, beliau telah dipercaya untuk mewakili klienklien baik dalam sengketa hukum di bidang bisnis, perdata, pidana, keluarga, pertanahan, Administrasi, serta permohonan dan proses Kepailitan dan Penundaan Kewajiban Pembayaran Utang (“PKPU”). Selain sebagai advokat, Kevin Sugiantoro juga memiliki berbagai pengalaman aktif di berbagai Organisasi Tionghoa yang ada di Indonesia seperti Paguyuban Sosial Marga Tionghoa Indonesia (PSMTI) dan Ikatan Pemuda Tionghoa Indonesia (IPTI). Selanjutnya beliau menjabat sebagai Sekretaris Wilayah IPTI Provinsi Jawa Timur untuk Tahun Pengurusan 2023-2026 dan Kepala Bidang Pemuda dan Olahraga PSMTI Provinsi Jawa Timur untuk Tahun Pengurusan 2025-2029.",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Areas of Practice',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ServiceCard(
                title: 'Hukum Keluarga',
                description:
                    'Gugatan Perceraian Dalam Negeri Dan Luar Negeri, Permohonan Dispensasi Nikah, Permohonan Isbat Nikah, Permohonan Ahli Waris Dan Gugatan Sengketa Waris, Gugatan Harta Gono Gini Dan Hak Asuh Anak, Permohonan Pengangkatan Dan Adopsi Anak, Permohonan Perubahan Nama/ Biodata, Permohonan Asal Usul Anak, Permohonan Poligami.',
              ),
              ServiceCard(
                title: 'Hukum Pertanahan',
                description:
                    'Pengurusan Surat Kepemilikan Tanah Dan Bangunan, Pengurusan Ijin Tanah Dan Bangunan (Persetujuan Bangunan Gedung Dan Serifikat Layak Fungsi)',
              ),
              ServiceCard(
                title: 'Hukum Perburuhan dan Ketenagakerjaan',
                description:
                    'Pendampingan Mediasi Buruh, Serikat Buruh, Dinas Ketenagakerjaan, Gugatan Sengketa Ketenagakerjaan (Pemutusan Hubungan Kerja Dan Pesangon)',
              ),
              ServiceCard(
                title: 'Hukum Perdata',
                description:
                    'Gugatan Wanprestasi Dan Perbuatan Melawan Hukum, Gugatan Kepailitan Dan Penundaan Kewajiban Pembayaran Utang, Penanganan Lelang Dan Eksekusi Putusan Pengadilan.',
              ),
              ServiceCard(
                title: 'Hukum Pidana',
                description:
                    'Pembuatan Dan Pendampingan Laporan Polisi, Pendampingan Di Kepolisian, Kejaksaan, Departemen Terkait, Pembelaan di Pengadilan Negeri.',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildSection(
                  "Pengadilan Niaga pada Pengadilan Negeri Jakarta Pusat",
                  "Penyelesaian sengketa utang antara debitur dengan kreditur melalui Penundaan Kewajiban Pembayaran Utang (PKPU) dan Kepailitan."),
              _buildSection("Litigation",
                  "Litigasi adalah proses penyelesaian sengketa melalui sistem pengadilan. Litigasi dapat dilakukan di berbagai pengadilan, seperti pengadilan negeri, pengadilan agama, pengadilan tata usaha negara, dan pengadilan militer. Proses litigasi melibatkan beberapa tahap, di antaranya Pengajuan gugatan dan/atau Permohonan hukum, Pertukaran informasi formal, Persidangan, Banding, Kasasi dan Peninjauan Kembali. Dalam proses litigasi, pengacara atau litigator akan membantu klien mulai dari persiapan hingga persidangan selesai."),
              _buildSection("Non Litigation",
                  "Pendampingan Dr. Alim Markus Presiden Direktur PT Maspion (Maspion Group)  Non Litigasi adalah proses penyelesaian sengketa di luar pengadilan yang juga dikenal sebagai alternative penyelesaian sengketa. Keuntungan dari penyelesaian ini tentunya lebih cepat, murah, dan fleksibel. Adapun ruang lingkup meliputi sebagai berikut: Legal Audit, Legal Advice, Legal Opinion, Legal Drafting Review/ Preview Agreement, Protection of Legal Interest, Investigation, Negotiation."),
            ],
          ),
        )
      ],
    );
  }
}

Widget _buildSection(String title, String content) {
  return Container(
    constraints: BoxConstraints(maxWidth: 1000),
    padding: const EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          content,
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  );
}
