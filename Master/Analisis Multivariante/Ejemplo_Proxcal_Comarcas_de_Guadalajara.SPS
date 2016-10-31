PROXIMITIES m16a m65a tactiv agri ind cons serv emp asal   /PRINT NONE  /MATRIX OUT(
  'C:\DOCUME~1\Usuario\CONFIG~1\Temp\spss1660\spssprxs.tmp' )
  /MEASURE=EUCLID
  /STANDARDIZE=VARIABLE Z
  /VIEW=CASE .

get /file= 'C:\DOCUME~1\Usuario\CONFIG~1\Temp\spss1660\spssprxs.tmp' .
execute.
save /outfile= 'C:\DOCUME~1\Usuario\CONFIG~1\Temp\spss1660\spssprxs.sav' /drop= ID caseno_ .
execute.


PROXSCAL
  /MATRIX=IN( 'C:\DOCUME~1\Usuario\CONFIG~1\Temp\spss1660\spssprxs.sav' )
  /INITIAL=SIMPLEX
  /TRANSFORMATION=ORDINAL (KEEPTIES)
  /ACCELERATION=NONE
  /CRITERIA=DIMENSIONS(2,2) MAXITER(100) DIFFSTRESS(.0001) MINSTRESS(.0001)
  /PRINT=COMMON DISTANCES TRANSFORMATIONS INPUT HISTORY STRESS DECOMPOSITION
  /PLOT=COMMON TRANSFORMATIONS ( ALL ) RESIDUALS ( ALL ) .


ERASE FILE='C:\DOCUME~1\Usuario\CONFIG~1\Temp\spss1660\spssprxs.tmp' .
