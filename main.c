void main(void){
    char *msg = "sdfvsdgfvsd";

    char *memvideo = (char*) 0xB8000;
    char *memvideo2 = (char*) 0xB8D20;
    char *memvideo3 = (char*) 0xB81E0;

    unsigned int i=0, j=0,k=0;

   /* while(msg[j] != '\0'){
       memvideo[i++] = msg[j];
       memvideo[i] = 0xA64;
       j++;
       i+=1;
    }*/

    while(k<3600){
        memvideo3[k++] = 0x00;
        memvideo3[k] = 0x00;
        k++;
    }

    while(i<160){
        memvideo[i++] = 0x01;
        memvideo[i] = 0x02;
        i++;
    }

    while(j<160){
        memvideo2[j++] = 0x01;
        memvideo2[j] = 0x02;
        j++;
    }


    return;
}