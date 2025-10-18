SELECT s.stanowisko, COUNT(pr.id_premii) AS liczba_premii
FROM ksiegowosc.pensja s
JOIN ksiegowosc.wynagrodzenie w ON s.id_pensji = w.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
GROUP BY s.stanowisko;
