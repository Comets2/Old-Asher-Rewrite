sped+=1
if(sped mod 45==0){
if(spedtick==0){
spedtick=1
}else{
spedtick=0
}}
if(ind1<delay)
    {
    ind1+=1
    }
  else
    {  
    ind+=1

if (alpha<1)
    {
    alpha+=fadespd
    }
if (ind>start2)
    {
    alpha-=fadespd*1.5
    }
if (alphatwo<1 && ind>start0)
    {
    alphatwo+=fadespd
    }
if(ind>start2 && mski<12)
    {
    mski+=mskspd
    }
if(ind>start1)
    {
    if(slicei==10)
        {
        mski=1
        slicei=11
        }
      else
        {
        if(slicei!=11)
            {
            slicei+=slicespd
            }
        }
    }
if(ind<start1)
    {
    cldi+=cldspd
    treei+=treespd
    }
    }

tick+=0.02


