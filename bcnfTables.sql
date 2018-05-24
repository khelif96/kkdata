INSERT INTO ownerInfo (credit, ownname, ownaddress, owncity,ownzip,owncountry,ownphone1)
SELECT credit, ownname, ownaddress, owncity,ownzip,owncountry,ownphone1
FROM kkdatadb.kkdata6;


INSERT INTO work (workno, artfirst, artlast, gertitle, engtitle, datemonth, dateyear, datetext, medium, dimh, dimw, place, othertitle, credit)
SELECT distinct workno, artfirst, artlast, gertitle, engtitle, datemonth, dateyear, datetext, medium, dimh, dimw, place, othertitle, credit
FROM kkdatadb.kkdata6;



INSERT INTO refs_info (workno, refs_publication, refs_reference, refs_illust)
   SELECT  distinct workno, refs_publication, refs_reference, refs_illust FROM kkdatadb.kkdata6 group by refs_publication, refs_reference;

INSERT INTO exhib_info (workno, ex_date, ex_place, ex_no, ex_illust)
  SELECT distinct workno,  ex_date, ex_place, ex_no,  ex_illust FROM kkdatadb.kkdata6;






INSERT INTO finalData (workno, repd, catrais, housecat, firstmod,lastmod,ex_date,ex_place,ex_no,refs_publication,refs_reference)
SELECT workno, repd, catrais, housecat, firstmod,lastmod,ex_date,ex_place,ex_no,refs_publication,refs_reference
FROM kkdatadb.kkdata6 ;
