#include "main.h"

//�������: x����x_N��y��Χy1-y_max
void SineWaveGen(int x_N, int y_min, int y_max)
{
    float y;
    int mid = (y_min + y_max) / 2;  //���ֵ
    int pp = mid - y_min;           //��ֵ

    printf("/*���Ҳ��ұ����ɳɹ�!*/\n/*\n");
    printf("  x��Χ:0-%d, y��Χ: %d-%d, ԭ��: %d\n", x_N, y_min, y_max, mid);
    printf("*/\n");

    for(int x = 0; x < x_N; x++)
    {
        y = pp * sin(2 * M_PI * x / x_N) + mid ;
		printf("%d : data <= %d;\n", x, (int )(y+0.5)); //���ݸ�ʽ������Ҫָ��
    }
}

//argc:��������, argv:�������������
int main(int argc, char **argv)
{
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
