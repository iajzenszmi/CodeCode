#include <stdio.h>
#include <stdlib.h>
#include <math.h>
//#pragma omp parallel for
int main (){
int *h_weights;
int *h_profits;
int kp_t;
int firsts;
int ototal;
int ncapacity;
int inst;
//#pragma omp parallel for
for(int i=0; i<inst; i++){
    int oldidx=index_cbuffer(cbuffer_start, i); 
    int index=index_cbuffer(cbuffer_start, i+inst->q); 

    int wi=inst->what[index];
    int pi=inst->phat[index];
    int si=inst->s[index];
    int ki=inst->k[index];
    int psi=0, wsi=0;
    int what=0, phat=0;

    int j=max(ki, firsts);
    int wj, pj;
    while(j<ototal){
        wj=h_weights[j];
        pj=h_profits[j];

        if(si<=j){
            if(wi+wj<=ncapacity){
                wi+=wj;
                pi+=pj;
            } else if(phat == 0) {
                wsi=wj;
                psi=pj;
                what=wi;
                phat=pi;
                si=j;
                break;
            }
        }
        j++;
    }
    for(;j<ototal;j++){
        wj=h_weights[j];
        pj=h_profits[j];
        // Compute Lower Bound
        if(wi+wj<=ncapacity){
            wi+=wj;
            pi+=pj;
        }
    }
    // update tuples
    int is_max=0;
    if(phat==0){ what=wi; phat=pi; is_max=1;}
    if(ki==ototal+1){what=ncapacity; phat=0; is_max=1;}
    //if(ki==ototal) return;

    inst->what[index]=what;
    inst->phat[index]=phat;
    inst->s[index]=si;
    inst->L[index]=pi;
    inst->U[index]=(is_max)?phat:phat+(ncapacity-what)*psi/wsi;

    if(ki==ototal+1){
        inst->k[index]=ki;    } else if(ki<ototal){
        inst->k[oldidx]=ki+1;
        inst->k[index]=ki+1;
    }
}

}

//
//function call in main
//
//while(some conditions)
//{
//   //...
//    start_t = clock();
//    calc_bound_cbuffer(h_weights, h_profits, &host_a, firsts, ototal, ncapacity);
//    end_t = clock();
//    omptst += (double)(end_t - start_t);
//...
//}
//...
//omptst /= CLOCKS_PER_SEC;
//printf("bound time: %f\n",omptst);
//
//
//
