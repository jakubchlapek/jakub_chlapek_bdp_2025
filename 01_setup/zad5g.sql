SELECT 
    p.imie,
    p.nazwisko,
    pen.kwota AS pensja
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pen ON w.id_pensji = pen.id_pensji
WHERE pen.kwota BETWEEN 1500 AND 3000;