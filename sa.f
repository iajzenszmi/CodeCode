          real  SA
          integer h
          integer r
          real   pi
          pi = 3.1412
          do 20 h = 1,50,1
              do 30 r = 1,50,1
          
          SA = .5 * 2 * pi *r *h + .5 * 3.1412 * r**2
          print *,"Surface Area  = ",SA, "radius = ",r, "height = ",h
30         continue          
20         continue

          end
