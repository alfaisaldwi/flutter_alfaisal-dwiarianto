Summary :
        MVVM(Model - View - View Model) =   Memisahkan logic dengan tampilan(View)ke dalam ViewModel
        Keuntungan MVVM = 
                    1. Reusability : Jika ada beberapa tampilan yang memerlukan alur logic yang sama,mereka bisa menggunakan ViewModel yang sama.
                    2. Maintainability :  Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic.
                    3. Testability : Pengujian menjadi terpisah antara pengujian tampilan denganpengujian logic sehingga dapat meningkatkan produktivitas pada pengujian.

        Struktur Direktori =  - Model memiliki2bagian,yaitu bentuk data yang akan digunakan dan sumber dari data tersebut.
                              - Tiap screen diletakkan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel.

        Model =
                - Bentuk data yang akan digunakan,dibuat dalam bentuk class.
                - Data-data yang dimuat,diletakkan pada property.
        
        View Model = 
                     - Menyimpan data-data dan logic yang diperlukan halaman ContactScreen.
                     - Jika widget lain memerlukan logic yang sama,dapat menggunakan ViewModel ini juga.
        
        View = Menggunakan StatefulWidget.