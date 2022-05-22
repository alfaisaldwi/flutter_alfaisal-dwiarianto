Resume : 

Declarative UI : Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini.

State : 
    - State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori.
    - Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah.
    - Ada 2 jenis state dalam flutter, ephermeral state dan app state.

Ephemeral State : 
    - Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, seperti : PageView, BottomNavigationBar, SwitchButton.
    - Tidak perlu state management yang kompleks.
    - Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState().



App State : Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, seperti : Login info, Pengaturan preferensi pengguna, Keranjang belanja dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda.





 