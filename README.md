# KeyListener 
KeyListener adalah system cutom keys untuk samp. Tetapi ia hanya work untuk PC sahaja dan perlukan file tambahan yang perlu dipasang di folder gta samp untuk menggunakannya.
Custom keys ini merangkumi semua keys yang ada di keyboard.

## Cara penggunaaan (player):
1. Muat turun fail `kl_client.zip`.
2. Ekstrak fail `KeyListener.asi` ke dalam folder GTA San Andreas.
3. Siap.

## Cara penggunaan (server):
1. Muat turun fail `kl_server.zip`.
2. Ekstrak fail `KeyListener.inc` ke folder `pawno\include`.
3. Ekstrak fail `KeyListener.so` (jika linux) atau `KeyListener.dll` (jika windows) ke folder `plugin`.
4. Tambahkan `#include <KeyListener>` di dalam `gamemode.pwn`.
5. Tambahkan `KeyListener.so` (jika linux) atau `KeyListener` (jika windows) di barisan plugins pada fail `server.cfg`.
6. Tambah callback dibawah pada fail `gamemode.pwn`:
```pawn
public void:OnPlayerKeyDown(player, key) // Fungsi ini akan dipanggil apabila key ditekan.
{
    new buffer[64];
    format(buffer, sizeof(buffer), "KeyUp: %d", key); // Skrip ini adalah untuk mencari ID key.
    SendClientMessage(player, -1, buffer);
}

public void:OnPlayerKeyUp(player, key) // Fungsi ini akan dipanggil apabila key tidak lagi ditekan.
{
    new buffer[64];
    format(buffer, sizeof(buffer), "KeyUp: %d", key); // Skrip ini adalah untuk mencari ID key.
    SendClientMessage(player, -1, buffer);
}
```

Contoh Skrip:
```pawn
public void:OnPlayerKeyDown(player, key) 
{
    if(key == 73) /* Key I */ {
        // Kod di sini akan dijalankan ketika pemain menekan key I
    }
}

public void:OnPlayerKeyUp(player, key) 
{
    if(key == 73) /* Key I */ {
        // Kod di sini akan dijalankan ketika pemain tidak lagi menekan key I
    }
}
```
