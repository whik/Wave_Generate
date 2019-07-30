#include "main.h"

//传入参数: x点数x_N，y范围y1-y_max
void SineWaveGen(int x_N, int y_min, int y_max)
{
    float y;
    int mid = (y_min + y_max) / 2;  //零点值
    int pp = mid - y_min;           //幅值

    printf("/*正弦查找表生成成功!*/\n/*\n");
    printf("  x范围:0-%d, y范围: %d-%d, 原点: %d\n", x_N, y_min, y_max, mid);
    printf("*/\n");

    for(int x = 0; x < x_N; x++)
    {
        y = pp * sin(2 * M_PI * x / x_N) + mid ;
		printf("%d : data <= %d;\n", x, (int )(y+0.5)); //数据格式根据需要指定
    }
}

//argc:参数个数, argv:参数保存的数组
int main(int argc, char **argv)
{
    int x_N, y_min, y_max;

    x_N = atoi(argv[1]);    //字符转整型
    y_min = atoi(argv[2]);
    y_max = atoi(argv[3]);

    //点数最少10个，幅值没有负数
    if(argc == 4 && (x_N > 10) && (y_max > y_min) && (y_max > 0) && (y_min >0))
        SineWaveGen(x_N, y_min, y_max);   //波形生成
    else
        cout << "参数错误! " << endl;

    return 0;
}
