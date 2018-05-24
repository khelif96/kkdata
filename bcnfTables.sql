INSERT INTO ownerInfo (credit, ownname, ownaddress, owncity,ownzip,owncountry,ownphone1)
SELECT credit, ownname, ownaddress, owncity,ownzip,owncountry,ownphone1
FROM artData;

INSERT INTO finalData (workno, repd, catrais, housecat, firstmod,lastmod,ex_date,ex_place,ex_no,refs_publication,refs_reference)
SELECT workno, repd, catrais, housecat, firstmod,lastmod,ex_date,ex_place,ex_no,refs_publication,refs_reference
FROM artData ;

INSERT INTO work (workno, artfirst, artlast, gertitle, engtitle, datemonth, dateyear, datetext, medium, dimh, dimw, place, othertitle, credit, owncountry)
SELECT distinct workno, artfirst, artlast, gertitle, engtitle, datemonth, dateyear, datetext, medium, dimh, dimw, place, othertitle, credit, owncountry
FROM artDataartData;


INSERT INTO ownerInfo (credit, ownname, ownaddress, owncity, ownzip, ownphone1)
  SELECT credit, ownname, ownaddress, owncity, ownzip, ownphone1 FROM artDataartData;

INSERT INTO refs_info (workno, refs_publication, refs_reference, refs_illust)
   SELECT  distinct workno, refs_publication, refs_reference, refs_illust FROM artData;

INSERT INTO exhib_info (workno, ex_date, ex_place, ex_no, ex_illust)
  SELECT distinct workno,  ex_date, ex_place, ex_no,  ex_illust FROM artDataartData;




INSERT INTO ownerInfo (credit, ownname, ownaddress, owncity,ownzip,owncountry,ownphone1)
SELECT credit, ownname, ownaddress, owncity,ownzip,owncountry,ownphone1
FROM artData;
