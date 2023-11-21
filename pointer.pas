program belajar_pointer;
uses crt;
var
    angka : integer;
    ptr_angka : ^integer;
    address : ^word;

    a, b, c, d : ^integer;
    nilai : integer;
begin
    clrscr;

    angka := 69;
    ptr_angka := @angka;
    address := addr(ptr_angka);

    writeln(angka);
    writeln(ptr_angka^);
    writeln(address^);

    ptr_angka^ := 32;
    writeln(angka);
    writeln(ptr_angka^);
    writeln(address^);

    readkey();
    clrscr;

    nilai := 10;
    writeln('Isi Variabel nilai : ', nilai);

    a := @nilai;
    writeln('Isi Pointer A ', a^);

    new(b);
    b^ := 32;
    writeln('Isi Pointer B ', b^);
end.