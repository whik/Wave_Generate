#include "main.h"

void GetTime(void)
{
    //ʱ���
    time_t t;
    struct tm *pt ;
    time(&t);

    pt = localtime(&t) ;
    printf("/* Generate time: %4d-%02d-%02d %02d:%02d:%02d */\n",
           pt->tm_year+1900, pt->tm_mon, pt->tm_mday, pt->tm_hour, pt->tm_min, pt->tm_sec);
}

//�������: x����x_N��y��Χy1-y_max
void SineWaveGen(int x_N, int y_min, int y_max)
{
    float y;
    int mid = (y_min + y_max) / 2;  //���ֵ
    int pp = mid - y_min;           //��ֵ

    printf("/*  x��Χ:0-%d, y��Χ: %d-%d, ԭ��: %d */\n", x_N, y_min, y_max, mid);

    FILE *fp;

    fp = fopen("sine_data.txt", "w");   //�����ļ�������ļ��Ѿ����ڣ�ɾ�����´���

    for(int x = 0; x < x_N; x++)
    {
        y = pp * sin(2 * M_PI * x / x_N) + mid ;
        printf("%d : data <= %d;\n", x, (int )(y+0.5)); //���ݸ�ʽ������Ҫָ��
        fprintf(fp, "%d : data <= %d;\n", x, (int )(y+0.5));
    }
    //ʱ���
    time_t t;
    struct tm *pt ;
    time(&t);

    pt = localtime(&t) ;
    printf("/* Generate time: %4d-%02d-%02d %02d:%02d:%02d */\n",
           pt->tm_year+1900, pt->tm_mon, pt->tm_mday, pt->tm_hour, pt->tm_min, pt->tm_sec);
    fprintf(fp, "/* Generate time: %4d-%02d-%02d %02d:%02d:%02d */\n",
            pt->tm_year+1900, pt->tm_mon, pt->tm_mday, pt->tm_hour, pt->tm_min, pt->tm_sec);

    fclose(fp); //�ļ��ر�

}

//argc:��������, argv:�������������
int main(int argc, char **argv)
{
//    GetTime();
    int x_N, y_min, y_max;
    x_N = atoi(argv[1]);    //�ַ�ת����
    y_min = atoi(argv[2]);
    y_max = atoi(argv[3]);

    //��������10������ֵû�и���
    if(argc == 4 && (x_N > 10) && (y_max > y_min) && (y_max > 0) && (y_min >0))
        SineWaveGen(x_N, y_min, y_max);   //��������
    else
        cout << "��������! " << endl;

    return 0;
}
