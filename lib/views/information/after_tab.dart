import 'package:earthquakes/contants/card.dart';
import 'package:earthquakes/contants/open_url.dart';
import 'package:earthquakes/contants/text_style.dart';
import 'package:flutter/material.dart';

class AfterTab extends StatelessWidget {
  const AfterTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            color: Colors.purpleAccent,
            child: Text(
              'DEPREM SONRASINDA YAPILMASI GEREKENLER',
              style: titleStyle,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.green[300],
                child: Text(
                  'KAPALI ALANDAYSANIZ;',
                  style: titleStyle.copyWith(fontSize: 14.0),
                ),
              ),
              buildCard('Önce kendi emniyetinizden emin olun.'),
              buildCard(
                  'Sonra çevrenizde yardım edebileceğiniz kimse olup olmadığını kontrol edin.'),
              buildCard(
                  'Depremlerden sonra çıkan yangınlar oldukça sık görülen ikincil afetlerdir. Bu nedenle eğer gaz kokusu alırsanız, gaz vanasını kapatın. Camları ve kapıları açın. Hemen binayı terk edin.'),
              buildCard('Dökülen tehlikeli maddeleri temizleyin.'),
              buildCard(
                  'Yerinden oynayan telefon ahizelerini telefonun üstüne koyun.'),
              buildCard(
                  'Acil durum çantanızı yanınıza alın, mahalle buluşma noktanıza doğru harekete geçin.'),
              buildCard(
                  'Radyo ve televizyon gibi kitle iletişim araçlarıyla size yapılacak uyarıları dinleyin.'),
              buildCard(
                  'Cadde ve sokakları  acil yardım araçları için boş bırakın.'),
              buildCard(
                  'Her büyük depremden sonra mutlaka artçı depremler olur. Artçı depremler zaman içerisinde seyrekleşir ve büyüklükleri azalır. Artçı depremler hasarlı binalarda zarara yol açabilir. Bu nedenle sarsıntılar tamamen bitene kadar hasarlı binalara girilmemelidir. Artçı depremler sırasında da ana depremde yapılması gerekenler yapılmalıdır.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.green[300],
                child: Text(
                  'AÇIK ALANDAYSANIZ;',
                  style: titleStyle.copyWith(fontSize: 14.0),
                ),
              ),
              buildCard('Çevrenizdeki hasara dikkat ederek bunları not edin.'),
              buildCard(
                  'Hasarlı binalardan ve enerji nakil hatlarından uzak durun.'),
              buildCard(
                  'Önce yakın çevrenizde acil yardıma gerek duyanlara yardım edin.'),
              buildCard('Sonra mahalle toplanma noktanıza gidin.'),
              buildCard(
                  'Yardım çalışmalarına katılın. Özel ilgiye ihtiyacı olan afetzedelere -yaşlılar, bebekler, hamileler, engelliler- yardımcı olun.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.green[300],
                child: Text(
                  'YIKINTI ALTINDA MAHSUR KALDIYSANIZ;',
                  style: titleStyle.copyWith(fontSize: 14.0),
                ),
              ),
              buildCard('Paniklemeden durumunuzu kontrol edin.'),
              buildCard(
                  'Hareket kabiliyetiniz kısıtlanmışsa çıkış için hayatınızı riske atacak hareketlere kalkışmayın. Biliniz ki kurtarma ekipleri en kısa zamanda size ulaşmak için çaba gösterecektir.'),
              buildCard(
                  'Enerjinizi en tasarruflu şekilde kullanmak için hareketlerinizi kontrol altında tutun.'),
              buildCard(
                  'KEl ve ayaklarınızı kullanabiliyorsanız su, kalorifer, gaz tesisatlarına, zemine vurmak suretiyle varlığınızı duyurmaya çalışın.'),
              buildCard(
                  'Sesinizi kullanabiliyorsanız kurtarma ekiplerinin seslerini duymaya ve onlara seslenmeye çalışınız. Ancak enerjinizi kontrollü kullanın.'),
            ],
          ),
          openUrl(),
        ],
      ),
    );
  }
}
