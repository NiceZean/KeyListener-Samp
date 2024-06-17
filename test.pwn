#include <KeyListener>

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
