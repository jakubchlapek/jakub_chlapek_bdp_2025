SELECT s.stanowisko, COUNT(*) AS liczba_pracownikow
FROM ksiegowosc.pensja s
JOIN ksiegowosc.wynagrodzenie w ON s.id_pensji = w.id_pensji
GROUP BY s.stanowisko;
