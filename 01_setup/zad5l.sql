SELECT
    s.stanowisko,
    AVG(s.kwota) AS srednia,
    MIN(s.kwota) AS minimalna,
    MAX(s.kwota) AS maksymalna
FROM ksiegowosc.pensja s
WHERE s.stanowisko = 'Kierownik'
GROUP BY s.stanowisko;
