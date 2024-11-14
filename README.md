Bu kod, bir Üniversite Yönetim Sistemi için Campus formunu oluşturur ve kampüs bilgilerini görüntülemek, eklemek, güncellemek ve silmek için bir Windows Forms uygulamasıdır.
SqlConnection sınıfı, veritabanı bağlantısını temsil eder.
Display(), Reset(), SaveBtn_Click(), EditBtn_Click(), DeleteBtn_Click() gibi metodlar kampüs bilgilerini görüntülemek, eklemek, güncellemek ve silmek için kullanılır.
Connection adlı bir SqlConnection nesnesi, veri tabanı bağlantısını sağlamak için kullanılır.
Data Source=TOPRAK;Database=üniversite yönetim;... bağlantı dizesi veritabanı sunucusu ve veritabanı bilgilerini içerir.

3. Display metodu, KampusTbl tablosundaki tüm verileri DataGridView (Camp_DGV) içinde görüntüler.
SqlDataAdapter, sorgu sonuçlarını DataTable nesnesine doldurur.

4. Reset metodu, formdaki metin kutularını temizleyerek yeni girişler için hazır hale getirir.
5. SaveBtn_Click() Metodu (Yeni Kampüs Ekleme)
 SaveBtn_Click metodu, Kaydet butonuna tıklandığında çalışır.
Gerekli bilgilerin eksik olup olmadığını kontrol eder. Eğer tüm bilgiler tam ise, KampusTbl tablosuna yeni bir kayıt ekler.

7.Camp_DGV_CellContentClick() Metodu

Camp_DGV_CellContentClick metodu, DataGridView'de bir hücreye tıklandığında çalışır.
Bu metod, seçilen kampüsün bilgilerini ilgili metin kutularına yükler ve seçilen satırdaki Kampus_Id değerini Key değişkenine atar.



ALTERNATİF ANLATIM 


University Management System
Bu proje, bir üniversite yönetim sistemine ait "Campus" formunu içeren bir Windows Forms uygulamasıdır. Bu form ile kampüs bilgileri görüntülenebilir, eklenebilir, güncellenebilir ve silinebilir. Sistem SQL Server veritabanı ile bağlantılı olarak çalışmaktadır.

İçindekiler
Özellikler
Kullanılan Teknolojiler
Kullanım
Fonksiyonlar
Bağlantı String Ayarları
Hata Yönetimi
Özellikler
Kampüs bilgilerini listeleme: Kullanıcı, mevcut kampüs bilgilerini veritabanından çekerek görüntüleyebilir.
Yeni kampüs ekleme: Kullanıcı yeni bir kampüs kaydı ekleyebilir.
Kampüs bilgilerini güncelleme: Kullanıcı var olan bir kampüs kaydını düzenleyebilir.
Kampüs silme: Kullanıcı seçili kampüs kaydını silebilir.
Navigasyon: Farklı formlar arasında geçiş yapma (Öğrenci, Fakülte, Bölüm, Maaşlar, Ücretler, vb.).
Kullanılan Teknolojiler
C# - Windows Forms uygulama geliştirme için kullanıldı.
SQL Server - Veritabanı yönetimi için kullanıldı.
ADO.NET - Veritabanı işlemleri için SQL bağlantısı ve komutları ile veri manipülasyonu sağlanmaktadır.
Kullanım
Projeyi kullanmadan önce, veritabanı bağlantısının düzgün çalışması için gerekli ayarları yapmanız gerekmektedir.

Bağlantı String Ayarları
Kodda, SqlConnection nesnesi ile SQL Server veritabanına bağlantı sağlanmaktadır:

csharp
Kodu kopyala
SqlConnection Connection = new SqlConnection(@"Data Source=TOPRAK;Database=üniversite yönetim;Integrated Security=True;User Instance=False");
Bu bağlantı dizesi Data Source, Database ve diğer bağlantı bilgilerini içerir. Veritabanı sunucu bilgilerinizi ve veritabanı isminizi kendi sisteminize göre düzenlemeniz gerekmektedir.

Fonksiyonlar
Display(): Veritabanındaki tüm kampüs bilgilerini KampusTbl tablosundan çeker ve DataGridView kontrolünde (Camp_DGV) gösterir.

Reset(): Tüm giriş kutularını temizleyerek, formu yeni veri girişi veya düzenleme için hazır hale getirir.

SaveBtn_Click(object sender, EventArgs e): Kullanıcı "Kaydet" butonuna bastığında çalışır. Gerekli alanlar doldurulduktan sonra kampüs bilgileri veritabanına kaydedilir. İşlem sonrası, güncel liste görüntülenir ve giriş alanları temizlenir.

EditBtn_Click(object sender, EventArgs e): Kullanıcı seçili kampüs bilgisini düzenleyip "Güncelle" butonuna bastığında çalışır. Seçili kampüs kaydı veritabanında güncellenir ve güncellenmiş liste görüntülenir.

DeleteBtn_Click(object sender, EventArgs e): Kullanıcı seçili kampüs kaydını silip "Sil" butonuna bastığında çalışır. Seçili kampüs veritabanından silinir ve güncel liste görüntülenir.

Camp_DGV_CellContentClick(object sender, DataGridViewCellEventArgs e): DataGridView üzerindeki bir satıra tıklandığında çalışır. Tıklanan satırdaki kampüs bilgileri formdaki giriş alanlarına doldurulur.

Navigasyon Fonksiyonları: Kullanıcı formdaki etiketlere tıklayarak farklı formlara geçiş yapabilir (Örneğin, Öğrenci, Bölüm, Fakülte formları). Her fonksiyon yeni bir form açar ve mevcut formu gizler.

Hata Yönetimi
Form işlemleri sırasında oluşabilecek hatalar try-catch bloklarıyla yakalanmakta ve kullanıcıya bir uyarı mesajı olarak gösterilmektedir. Örneğin, veritabanı bağlantı hataları veya SQL hataları kullanıcıya bildirilir.

csharp
Kodu kopyala
