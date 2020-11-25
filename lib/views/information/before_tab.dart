import 'package:earthquakes/contants/card.dart';
import 'package:earthquakes/contants/open_url.dart';
import 'package:earthquakes/contants/text_style.dart';
import 'package:flutter/material.dart';

class BeforeTab extends StatelessWidget {
  const BeforeTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
              color: Colors.amber,
              child: Text(
                'DEPREM ÖNCESİ ALINACAK ÖNLEMLER',
                style: titleStyle,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildCard(
                  'Yerleşim bölgeleri titizlikle belirlenmelidir. Kaygan ve ovalık bölgeler iskana açılmamalıdır. Konutlar gevşek toprağa sahip meyilli arazilere yapılmamalıdır.'),
              buildCard(
                  'Yapılar deprem etkilerine karşı dayanıklı inşa edilmelidir. (Yapı Tekniğine ve İnşaat Yönetmeliğine uygun olarak)'),
              buildCard(
                  'İmar planında konuta ayrılmış yerler dışındaki yerlere ev ve bina yapılmamalıdır.'),
              buildCard(
                  'Dik yarların yakınına, dik boğaz ve vadilerin içine bina yapılmamalıdır.'),
              buildCard(
                  'Çok kar yağan ve çığ gelen yamaçlarda bina yapılmamalıdır.'),
              buildCard('Mevcut binaların dayanıklılıkları artırılmalıdır.'),
              buildCard('Konutlara deprem sigortası yaptırılmalıdır.'),
            ],
          ),
          Card(
            color: Colors.blue[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Bu önlemlerin yanı sıra, yapısal olamayan, yani binadan değil de eşyalardan kaynaklanacak hasarlardan korunmak için günlük kullandığımız eşyalarımızın ev içerisine yerleştirilmesinde aşağıda sayılan önlemleri almalıyız:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildCard(
                  'Dolap üzerine konulan eşya ve büro malzemeleri kayarak düşmelerini önlemek için plastik tutucu malzeme veya yapıştırıcılarla sabitlenmelidir.'),
              buildCard(
                  'Soba ve diğer ısıtıcılar sağlam malzemelerle duvara veya yere sabitlenmelidir.'),
              buildCard(
                  'Dolaplar ve devrilebilecek benzeri eşyalar birbirine ve duvara sabitlenmelidir. Eğer sabitlenen eşya ve duvar arasında boşluk kalıyorsa, çarpma etkisini düşürmek için araya bir dolgu malzemesi konulmalıdır.'),
              buildCard(
                  'Tavan ve duvara asılan avize, klima vb. cihazlar bulundukları yere ağırlıklarını taşıyacak şekilde, duvar ve pencerelerden yeterince uzağa ve kanca ile asılmalıdır.'),
              buildCard(
                  'İçinde ağır eşyalar bulunan dolap kapakları mekanik kilitler takılarak sıkıca kapalı kalmaları sağlanmalı.'),
              buildCard(
                  'Tezgah üzerindeki kayabilecek beyaz eşyaların altına metal profil koyarak bunların kayması önlenmelidir.'),
              buildCard(
                  'Zehirli, patlayıcı, yanıcı maddeler düşmeyecek bir konumda sabitlenmeli ve kırılmayacak bir şekilde depolanmalıdır. Bu maddelerin üzerlerine fosforlu, belirleyici etiketler konulmalıdır.'),
              buildCard(
                  'Rafların önüne elastik bant ya da tel eklenebilir. Küçük nesneler ve şişeler, birbirlerine çarpmayacak ve devrilmeyecek şekilde, kutuların içine yerleştirilmelidir.'),
              buildCard(
                  'Gaz kaçağı ve yangına karşı, gaz vanası ve elektrik sigortaları otomatik hale getirilmelidir.'),
              buildCard(
                  'Binadan acilen çıkmak için kullanılacak yollardaki tehlikeler ortadan kaldırılmalı, bu yollar işaretlenmeli, çıkışı engelleyebilecek eşyalar çıkış yolu üzerinden kaldırılmalıdır.'),
              buildCard(
                  'Geniş çıkış yolları oluşturulmalıdır. Dışa doğru açılan kapılar kullanılmalı, acil çıkış kapıları kilitli olmamalıdır. Acil çıkışlar aydınlatılmalıdır.'),
              buildCard(
                  'Karyolalar pencerenin ve üzerine devrilebilecek ağır dolapların yanına konulmamalı, karyolanın üzerinde ağır eşya olan raf bulundurulmamalıdır.'),
              buildCard(
                  'Tüm bireylerin katılımı ile (evde, iş yerinde, apartmanda, okulda) “Afete hazırlık planları” yapılmalı, her altı ayda bir bu plan gözden geçirilmelidir. Zaman zaman bu plana göre nasıl davranılması gerektiğinin tatbikatları yapılmalıdır.'),
              buildCard(
                  'Bir afet ve acil durumda eve ulaşılamayacak durumlar için aile bireyleri ile iletişimin nasıl sağlanacağı, alternatif buluşma yerleri ve bireylerin ulaşabileceği bölge dışı bağlantı kişisi (ev, işyeri, okul içinde, dışında ve ya mahalle dışında) belirlenmelidir.'),
              buildCard(
                  'Önemli evraklar (kimlik kartları, tapu, sigorta belgeleri, sağlık karnesi, diplomalar, pasaport, banka cüzdanı vb.) kopyaları hazırlanarak su geçirmeyecek bir şekilde saklanmalı, ayrıca bu evrakların bir örneği de bölge dışı bağlantı kişisinde bulunmalıdır.'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.lime,
                child: buildCard(
                    'Bina yönetimince önceden belirlenen, mesken veya iş yerinin özelliği ve büyüklüğüne göre uygun yangın söndürme cihazı mutlaka bulundurulmalı ve periyodik bakımları da yaptırılmalıdır. Bu cihazlar;'),
              ),
              buildCard('Kolayca ulaşılabilecek bir yerde tutulmalıdır.'),
              buildCard('Yeri herkes tarafından bilinmelidir.'),
              buildCard('Duvara sıkıca sabitlenmelidir.'),
              buildCard('Her yıl ilgili firma tarafından bakımı yapılmalıdır.'),
              buildCard(
                  'Bir kez kullanıldıktan sonra mutlaka tekrar doldurulmalıdır.'),
              buildCard(
                  'Binalarda asansörlerin kapı yanlarına "Deprem Sırasında Kullanılmaz" levhası asılmalıdır.'),
            ],
          ),
          openUrl(),
        ],
      ),
    );
  }
}
