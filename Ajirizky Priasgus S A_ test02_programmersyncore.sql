--no 1--
SELECT * FROM mst_member 
WHERE id_provinsi = "12"
GROUP BY id_kabupaten;

--no 2--
SELECT * FROM mst_provinsi
WHERE NOT kode_provinsi IN ("11" , "12");

--no 3--
SELECT * FROM mst_kabupaten
WHERE NOT kode_kabupaten IN ("11.05", "11.07", "11.09", "11.11", "11.16", "11.17", "12.02", "12.05", "12.06", "12.07", "12.08");

--no 4--
SELECT * FROM mst_kecamatan
WHERE NOT kode_kecamatan IN ("11.0501", "11.07.17", "11.09.03", "11.09.05", "11.11.08", "11.11.08", "11.11.16", "11.16.08", "11.17.02", "11.17.04", "11.17.06", "12.02.07", "12.05.03", "12.06.02", "12.07.31", "12.08.21");

--no 5--
SELECT nama FROM mst_member
WHERE id_kabupaten = "12.08";

--no 6--
SELECT count(kode_kabupaten) FROM mst_instansi
WHERE kode_kabupaten IN ("11.11" , "11.17");

--no 7--
SELECT * FROM mst_member WHERE email LIKE 'M%';

--no 8--
SELECT email FROM mst_member 
WHERE email LIKE '%or%' AND id_provinsi = "12";

--no 9--
SELECT * FROM mst_member 
WHERE id_instansi LIKE "%2004%";

--no 10--
SELECT * FROM mst_member 
WHERE id_kecamatan LIKE "%08%";