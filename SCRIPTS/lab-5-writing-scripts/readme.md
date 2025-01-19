## 2016/2017 - Zestaw 5 - *Programowanie w językach interpreterów poleceń*

1. Skrypt wypisuje liczbę argumentów, z którymi został uruchomiony. Jeżli został uruchomiony
bez argumentów to wypisuje stosowny komunikat. Skrypt w kolejnych liniach wypisuje
wszystkie argumenty z którymi został uruchomiony poprzedzając każdy z nich napisem
`argument nr. x`  gdzie x jest numerem argumentu.

    *Implementacje:* [PJ](piotr-janczyk/ex-1.sh)

2. W pętli nieskończonej, co 3 sekundy skrypt wypisuje liczbę procesów uruchomionych w
systemie. Zakończenie działania - kombinacja klawiszy `Control-C`.

    *Implementacje:* [PJ](piotr-janczyk/ex-2.sh)

3. Skrypt jako argument wywołania otrzymuje UID. Jeżli został uruchomiony bez argumentu,
to doczytuje go z klawiatury. Skrypt korzystając z pliku `/etc/passwd` wypisuje zawartość 5.
kolumny linii opisującej użytkownika o podanym UID.

    *Implementacje:* [PJ](piotr-janczyk/ex-3.sh)

4. Jak w punkcie poprzednim, ale należy uwzględnić przypadek, w którym w linii komend
podano lub należy przeczytac kilka argumentów - UID kilku użytkowników.

    *Implementacje:* [PJ](piotr-janczyk/ex-4.sh)

5. Skrypt wypisuje z katalogu w którym został uruchomiony nazwy wszystkich plików i katalogów z zaznaczeniem, czy jest to plik regularny czy katalog. Dla plików podaje prawa
dostępu użytkownika (rwx), który uruchomił skrypt.

    *Implementacje:* [PJ](piotr-janczyk/ex-5.sh)

6. \* Skrypt ma podzielić plik na kawałki (zawartość dużego pliku ma zostac zapisana do
plików o rozmiarach odpowiednio mniejszych). Skrypt musi zostać uruchomiony z dwoma
argumentami. Pierwszy to nazwa pliku, który ma zostać podzielony, a drugi to rozmiar pojedynczego
kawałka (mniejszego pliku) w bajtach. Do kopiowania najprościej użyć polecenia
`dd` w postaci:
```bash
dd conv=noerror if=$1 of=$1.$PASS bs=$CHUNK skip=$((PASS - 1)) count=1 2>/dev/null
```
gdzie: PASS oznacza numer kawałka pliku, CHUNK rozmiar kawałka pliku, a conv=noerr
spowoduje, że komenda dd będzie kopiować tylko do końca pliku żródłowego. Jest to konieczne
w przypadku, gdy ostatni kawalek jest mniejszy od zaproponowanego rozmiaru
bloku (sytuacja często spotykana).

    *Implementacje:* [PJ](piotr-janczyk/ex-6.sh)

7. Dla interpretera poleceń bash należy napisać skrypt który w pętli nieskończonej co sekundę
wypisuje napis `ciagle zyje`. W przypadku otrzymania sysgnalu `USR1` lub `USR2` wypisuje napis
`dostalem sygnal USRx` - gdzie x jest numerem otrzymanego sygnału (wskazówka: instrukcja
`trap`).

    *Implementacje:* [PJ](piotr-janczyk/ex-7.sh)
