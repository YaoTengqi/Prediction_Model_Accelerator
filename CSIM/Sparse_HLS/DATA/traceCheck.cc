#include<stdio.h>
#include<string.h>
unsigned  c1[4] = {0};
unsigned  c2[4] = {0};
int main()
{
    FILE * pd_true = NULL;
    FILE * pd_mine = NULL;
    pd_true = fopen("./data/output_data.bin","rb");
    pd_mine = fopen("./data/dram.bin","rb");
    int begin = 0;
    int addr = begin;
    // int base_addr = 2560;        //64
    int base_addr = 5120;           //128
    // int base_addr = 20480;       //512
    fseek(pd_true,begin,0);
    fseek(pd_mine,base_addr,0);
    memset(c1, 0, sizeof(c1));
    memset(c2, 0, sizeof(c2));
    int wrongCnt = 0;
    printf("Address       True          Mine\n");
    while(!feof(pd_true))
    {
        
        memset(c1, 0, sizeof(c1));
        memset(c2, 0, sizeof(c2));
        fread(c1,sizeof(int),4,pd_true);
        fread(c2,sizeof(int),4,pd_mine);
        if(c1[0]!=c2[0]||c1[1]!=c2[1]||c1[2]!=c2[2]||c1[3]!=c2[3])
        {
            printf("%x ", addr);
            printf("%x%x%x%x,    %x%x%x%x\n",c1[0],c1[1],c1[2],c1[3],c2[0],c2[1],c2[2],c2[3]);
            wrongCnt++;
        }
        addr += 16;

    }
    if(!wrongCnt){
        printf("TEST PASS!\n");
    }
    else{
        printf("Toal %d wrongs.\n",wrongCnt);
    }
    fclose(pd_true);
    fclose(pd_mine);
}