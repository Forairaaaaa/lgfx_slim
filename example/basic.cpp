/**
 * @file basic.cpp
 * @author Forairaaaaa
 * @brief
 * @version 0.1
 * @date 2024-09-24
 *
 * @copyright Copyright (c) 2024
 *
 */
#include "misc/enum.hpp"
#include <cstdint>
#include <cstdio>
#include <lgfx_slim.h>

int main()
{
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

    return 0;
}
