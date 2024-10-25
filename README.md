# LGFX Slim
[LovyanGFX](https://github.com/lovyan03/LovyanGFX) 精简版，去除所有硬件功能和平台依赖，只保留精灵图渲染部分

适用于只关心渲染成果 buffer 的情况：

```cpp
auto canvas = lgfx::LGFX_Sprite();

canvas.createSprite(233, 666);
canvas.setColorDepth(lgfx::rgb565_nonswapped);

auto rgb_data = (uint16_t*)canvas.getBuffer();

// 0xF800
canvas.fillScreen(TFT_RED);
for (int i = 0; i < 5; i++) {
    printf("0x%04X\n", rgb_data[i]);
}
printf("\n");

// 0x07E0
canvas.fillScreen(TFT_GREEN);
for (int i = 0; i < 5; i++) {
    printf("0x%04X\n", rgb_data[i]);
}
printf("\n");

// 0x001F
canvas.fillScreen(TFT_BLUE);
for (int i = 0; i < 5; i++) {
    printf("0x%04X\n", rgb_data[i]);
}
```
