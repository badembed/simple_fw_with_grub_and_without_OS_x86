void hello_world(int number);

void main(void) {
    hello_world(4);
}

void hello_world(int number) {
    char * vidmem = (char*)0xB8000;
    int i;

    for(i = 0; i < number; i++) {
        vidmem[0 + i*30]  = 'H';
        vidmem[2 + i*30]  = 'e';
        vidmem[4 + i*30]  = 'l';
        vidmem[6 + i*30]  = 'l';
        vidmem[8 + i*30]  = 'o';
        vidmem[10 + i*30] = ' ';
        vidmem[12 + i*30] = 'W';
        vidmem[14 + i*30] = 'o';
        vidmem[16 + i*30] = 'r';
        vidmem[18 + i*30] = 'l';
        vidmem[20 + i*30] = 'd';
        vidmem[22 + i*30] = '!';
    }
}
