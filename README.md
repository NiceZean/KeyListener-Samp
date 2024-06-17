# KeyListener 
KeyListener adalah sistem kunci tersuai untuk SAMP. Tetapi ia hanya boleh digunakan untuk PC sahaja dan perlukan fail tambahan yang perlu dipasang di folder gta samp untuk menggunakannya.
Sistem ini merangkumi semua kunci yang ada di keyboard.

## Cara penggunaaan (player):
1. Muat turun fail.
2. Ekstrak fail `KeyListener.asi` ke dalam folder GTA San Andreas anda.

## Cara penggunaan (server):
1. Muat turun fail.
2. Ekstrak fail `KeyListener.inc` ke folder `pawno\include`.
3. Ekstrak fail `KeyListener.so` (jika linux) atau `KeyListener.dll` (jika windows) ke folder `plugin`.
4. Tambahkan takrifan dibawah di dalam fail `gamemode.pwn`.
```pawn
#include <KeyListener>
```
6. Tambahkan `KeyListener.so` (jika linux) atau `KeyListener` (jika windows) di barisan plugins pada fail `server.cfg`.
7. Tambah callback dibawah pada fail `gamemode.pwn`:
```pawn
public void:OnPlayerKeyDown(player, key) // Fungsi ini akan dipanggil apabila kunci ditekan.
{
    new buffer[64];
    format(buffer, sizeof(buffer), "KeyUp: %d", key); // Skrip ini adalah untuk mencari ID kunci.
    SendClientMessage(player, -1, buffer);
}

public void:OnPlayerKeyUp(player, key) // Fungsi ini akan dipanggil apabila key tidak lagi ditekan.
{
    new buffer[64];
    format(buffer, sizeof(buffer), "KeyUp: %d", key); // Skrip ini adalah untuk mencari ID kunci.
    SendClientMessage(player, -1, buffer);
}
```

## Parameter
```
- player : Adalah pemboleh ubah untuk ID pemain.
- key : Adalah pemboleh ubah untuk ID kunci.
```

## Contoh Skrip
```pawn
// 73 adalah ID untuk kunci I.

public void:OnPlayerKeyDown(player, key) 
{
    if(key == 73) /* Kunci I */ {
        // Kod di sini akan dijalankan ketika pemain menekan key I
    }
}

public void:OnPlayerKeyUp(player, key) 
{
    if(key == 73) /* Kunci I */ {
        // Kod di sini akan dijalankan ketika pemain tidak lagi menekan key I
    }
}
```
