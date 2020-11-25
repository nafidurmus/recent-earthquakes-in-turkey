import 'package:earthquakes/contants/card.dart';
import 'package:earthquakes/contants/open_url.dart';
import 'package:earthquakes/contants/text_style.dart';
import 'package:flutter/material.dart';

class DuringTab extends StatelessWidget {
  const DuringTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            color: Colors.tealAccent,
            child: Text(
              'DEPREM ANINDA YAPILMASI GEREKENLER',
              style: titleStyle,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.orange[300],
                child: Text(
                  'DEPREM ANINDA BİNA İÇERİSİNDEYSENİZ;',
                  style: titleStyle.copyWith(fontSize: 14.0),
                ),
              ),
              Card(
                color: Colors.red,
                child: Text(
                  'Kesinlikle panik yapılmamalıdır.',
                  style: titleStyle.copyWith(color: Colors.white),
                ),
              ),
              buildCard(
                  'Sabitlenmemiş dolap, raf, pencere vb. eşyalardan uzak durulmalıdır.'),
              buildCard(
                  'Varsa sağlam sandalyelerle desteklenmiş masa altına veya dolgun ve hacimli koltuk, kanepe, içi dolu sandık gibi koruma sağlayabilecek eşya yanına çömelerek hayat üçgeni oluşturulmalıdır.'),
              buildCard(
                  'Baş iki el arasına alınarak veya bir koruyucu (yastık, kitap vb) malzeme ile korunmalıdır. Sarsıntı geçene kadar bu pozisyonda beklenmelidir'),
              buildCard(
                  'Güvenli bir yer bulup, diz üstü ÇÖK, Başını ve enseni koruyacak şekilde KAPAN, Düşmemek için sabit bir yere TUTUN'),
              buildCard('Merdivenlere ya da çıkışlara doğru koşulmamalıdır.'),
              buildCard('Balkona çıkılmamalıdır.'),
              buildCard(
                  'Balkonlardan ya da pencerelerden aşağıya atlanmamalıdır.'),
              buildCard('Kesinlikle asansör kullanılmamalıdır.'),
              buildCard(
                  'Telefonlar acil durum ve yangınları bildirmek dışında kullanılmamalıdır.'),
              buildCard(
                  'Kibrit, çakmak yakılmamalı, elektrik düğmelerine dokunulmamalıdır.'),
              buildCard(
                  'Tekerlekli sandalyede isek tekerlekler kilitlenerek baş ve boyun korumaya alınmalıdır.'),
              buildCard(
                  'Mutfak, imalathane, laboratuvar gibi iş aletlerinin bulunduğu yerlerde; ocak, fırın ve bu gibi cihazlar kapatılmalı, dökülebilecek malzeme ve maddelerden uzaklaşılmalıdır.'),
              buildCard(
                  'Sarsıntı geçtikten sonra elektrik, gaz ve su vanalarını kapatılmalı, soba ve ısıtıcılar söndürülmelidir.'),
              buildCard(
                  'Diğer güvenlik önlemleri alınarak gerekli olan eşya ve malzemeler alınarak bina daha önce tespit edilen yoldan derhal terk edilip toplanma bölgesine gidilmelidir.'),
              buildCard(
                  'Okulda sınıfta ya da büroda ise sağlam sıra, masa altlarında veya yanında; koridorda ise duvarın yanına hayat üçgeni oluşturacak şekilde ÇÖK-KAPAN-TUTUN hareketi ile baş ve boyun korunmalıdır.'),
              buildCard(
                  'Pencerelerden ve camdan yapılmış eşyalardan uzak durulmalıdır.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.orange[300],
                child: Text(
                  'DEPREM ANINDA AÇIK ALANDAYSANIZ;',
                  style: titleStyle.copyWith(fontSize: 14.0),
                ),
              ),
              buildCard(
                  'Enerji hatları ve direklerinden, ağaçlardan, diğer binalardan ve duvar diplerinden uzaklaşılmalıdır. Açık arazide çömelerek etraftan gelen tehlikelere karşı hazırlıklı olunmalıdır.'),
              buildCard(
                  'Toprak kayması olabilecek, taş veya kaya düşebilecek yamaç altlarında bulunulmamalıdır. Böyle bir ortamda bulunuluyorsa seri şekilde güvenli bir ortama geçilmelidir.'),
              buildCard(
                  'Binalardan düşebilecek baca, cam kırıkları ve sıvalara karşı tedbirli olunmalıdır.'),
              buildCard(
                  'oprak altındaki kanalizasyon, elektrik ve gaz hatlarından gelecek tehlikelere karşı dikkatli olunmalıdır.'),
              buildCard('Deniz kıyısından uzaklaşılmalıdır.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.orange[300],
                child: Text(
                  'DEPREM ANINDA ARAÇ KULLANIYORSANIZ;',
                  style: titleStyle.copyWith(fontSize: 14.0),
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: Colors.grey[300],
                      child: Text(
                        'Sarsıntı sırasında karayolunda seyir halindeyseniz;',
                        style: titleStyle.copyWith(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    buildCard(
                        'Bulunduğunuz yer güvenli ise; yolu kapatmadan sağa yanaşıp durulmalıdır. Kontak anahtarı yerinde bırakılıp, pencereler kapalı olarak araç içerisinde beklenmelidir. Sarsıntı durduktan sonra açık alanlara gidilmelidir.'),
                    buildCard(
                        '- Araç meskun mahallerde ya da güvenli bir yerde değilse (ağaç ya da enerji hatları veya direklerinin yanında, köprü üstünde vb.); durdurulmalı, kontak anahtarı üzerinde bırakılarak terk edilmeli ve trafikten uzak açık alanlara gidilmelidir.'),
                  ],
                ),
              ),
              buildCard(
                  'Sarsıntı sırasında bir tünelin içindeyseniz ve çıkışa yakın değilseniz; araç durdurulup aşağıya inilmeli ve yanına yan yatarak ayaklar karına çekilip, ellerle baş ve boyun korunmalıdır. (ÇÖK-KAPAN-TUTUN)'),
              buildCard(
                  'Kapalı bir otoparkta iseniz; araç dışına çıkılıp, yanına yan yatarak, ellerle baş ve boyun korunmalıdır. Yukarıdan düşebilecek tavan, tünel gibi büyük kitleler aracı belki ezecek ama yok etmeyecektir. Araç içinde olduğunuz takdirde, aracın üzerine düşen bir parça ile aracın içinde ezilebilirsiniz.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.orange[300],
                child: Text(
                  'METRODA VEYA DİĞER TOPLU TAŞIMA ARAÇLARINDAYSANIZ:',
                  style: titleStyle.copyWith(fontSize: 14.0),
                ),
              ),
              buildCard(
                  'Gerekmedikçe, kesinlikle metro ve trenden inilmemelidir. Elektriğe kapılabilirsiniz veya diğer hattan gelen başka bir metro yada tren size çarpabilir.'),
              buildCard(
                  'Sarsıntı bitinceye kadar metro ya da trenin içinde, sıkıca tutturulmuş askı, korkuluk veya herhangi bir yere tutunmalı, metro veya tren personeli tarafından verilen talimatlara uyulmalıdır.'),
            ],
          ),
          openUrl(),
        ],
      ),
    );
  }
}
