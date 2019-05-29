data groc;
input Region $9. Manager $ Department $ Sales;
datalines;
Southeast    Hayes       Paper       250
Southeast    Hayes       Produce     100
Southeast    Hayes       Canned      120
Southeast    Hayes       Meat        140
Northeast    Fuller      Paper       200
Northeast    Fuller      Produce     300
Northeast    Fuller      Canned      420
Northeast    Fuller      Meat        125
;
 proc sort data=groc;
      BY DESCENDING REGION DEPARTMENT;
      run;
        options nobyline nodate pageno=1
 linesize=64  pagesize=20;
 proc chart data=groc;
 by region department;
 vbar manager / type=sum sumvar=sales;
 title1 ’This chart shows #byval2 sales’;
 title2 ’in the #byval(region)..’;
 run;
 options byline;
 y;
