[org 0x0100]

jmp start
oldIsr: dd 0
tickcount: dw 0
seconds: dw 0
clrScreen:
    push es
    push ax
    push di
    mov ax, 0xb800
    mov es, ax
    nextPosition:
        mov word [es:di], 0x0720
        add di, 2
        cmp di, 4000
        jne nextPosition
    pop di
    pop ax
    pop es
    ret

nextScreen:
    push es
    push ax
    push di
    mov ax, 0xb800
    mov es, ax
    nextPosition1:
        mov word [es:di], 0x0200
        add di, 2
        cmp di, 4000
        jne nextPosition1
    pop di
    pop ax
    pop es
    ret
ptrScreen:	
    push es
    push ax
    push di
    push bx
    push dx
    mov si, 0
    push si

    mov ax, 0xb800
    mov es, ax

    mov bx, 160 ; moves to next line
    mov si, 318  

    nextPoint:
        mov word [es:di], 0x7000
        cmp di, 0
        je near upperBorder
        cmp di, si
        je near rightBorder
        cmp di, bx
        je near leftBorder
cmp di,188
je near block
cmp di,190
je near block
cmp di,192
je near block
cmp di,194
je near block
cmp di,196
je near block
cmp di,198
je near block
cmp di,200
je near block
cmp di,202
je near block
cmp di,334
je near block
cmp di,336
je near block
cmp di,338
je near block
cmp di,340
je near block
cmp di,342
je near block
cmp di,344
je near block
cmp di,346
je near block
cmp di,348
je near block
cmp di,350
je near block
cmp di,352
je near block
cmp di,354
je near block
cmp di,356
je near block
cmp di,358
je near block
cmp di,360
je near block
cmp di,362
je near block
cmp di,364
je near block
cmp di,366
je near block
cmp di,368
je near block
cmp di,370
je near block
cmp di,372
je near block
cmp di,374
je near block
cmp di,376
je near block
cmp di,378
je near block
cmp di,380
je near block
cmp di,382
je near block
cmp di,384
je near block
cmp di,386
je near block
cmp di,388
je near block
cmp di,390
je near block
cmp di,392
je near block
cmp di,394
je near block
cmp di,396
je near block
cmp di,398
je near block
cmp di,400
je near block
cmp di,402
je near block
cmp di,404
je near block
cmp di,406
je near block
cmp di,408
je near block
cmp di,410
je near block
cmp di,412
je near block
cmp di,414
je near block
cmp di,416
je near block
cmp di,418
je near block
cmp di,420
je near block
cmp di,422
je near block
cmp di,424
je near block
cmp di,426
je near block
cmp di,428
je near block
cmp di,430
je near block
cmp di,432
je near block
cmp di,434
je near block
cmp di,436
je near block
cmp di,438
je near block
cmp di,440
je near block
cmp di,442
je near block
cmp di,444
je near block
cmp di,446
je near block
cmp di,448
je near block
cmp di,450
je near block
cmp di,452
je near block
cmp di,494
je near block
cmp di,496
je near block
cmp di,498
je near block
cmp di,500
je near block
cmp di,502
je near block
cmp di,504
je near block
cmp di,506
je near block
cmp di,508
je near block
cmp di,510
je near block
cmp di,512
je near block
cmp di,514
je near block
cmp di,516
je near block
cmp di,518
je near block
cmp di,520
je near block
cmp di,522
je near block
cmp di,524
je near block
cmp di,526
je near block
cmp di,528
je near block
cmp di,530
je near block
cmp di,532
je near block
cmp di,534
je near block
cmp di,536
je near block
cmp di,538
je near block
cmp di,540
je near block
cmp di,542
je near block
cmp di,544
je near block
cmp di,546
je near block
cmp di,548
je near block
cmp di,550
je near block
cmp di,552
je near block
cmp di,554
je near block
cmp di,556
je near block
cmp di,558
je near block
cmp di,560
je near block
cmp di,562
je near block
cmp di,564
je near block
cmp di,566
je near block
cmp di,568
je near block
cmp di,570
je near block
cmp di,572
je near block
cmp di,574
je near block
cmp di,576
je near block
cmp di,578
je near block
cmp di,580
je near block
cmp di,582
je near block
cmp di,584
je near block
cmp di,586
je near block
cmp di,588
je near block
cmp di,590
je near block
cmp di,592
je near block
cmp di,594
je near block
cmp di,596
je near block
cmp di,598
je near block
cmp di,600
je near block
cmp di,602
je near block
cmp di,604
je near block
cmp di,606
je near block
cmp di,608
je near block
cmp di,610
je near block
cmp di,612
je near block
cmp di,654
je near block
cmp di,656
je near block
cmp di,658
je near block
cmp di,660
je near block
cmp di,662
je near block
cmp di,664
je near block
cmp di,666
je near block
cmp di,668
je near block
cmp di,696
je near block
cmp di,698
je near block
cmp di,700
je near block
cmp di,702
je near block
cmp di,704
je near block
cmp di,706
je near block
cmp di,708
je near block
cmp di,710
je near block
cmp di,744
je near block
cmp di,746
je near block
cmp di,748
je near block
cmp di,750
je near block
cmp di,752
je near block
cmp di,754
je near block
cmp di,756
je near block
cmp di,758
je near block

cmp di,776
je near hive
cmp di,778
je near hive

cmp di,814
je near block
cmp di,816
je near block
cmp di,818
je near block
cmp di,820
je near block
cmp di,822
je near block
cmp di,824
je near block
cmp di,826
je near block
cmp di,828
je near block
cmp di,876
je near block
cmp di,878
je near block
cmp di,880
je near block
cmp di,882
je near block
cmp di,884
je near block
cmp di,886
je near block
cmp di,888
je near block
cmp di,890
je near block
cmp di,892
je near block

cmp di,904
je near block
cmp di,906
je near block
cmp di,908
je near block
cmp di,910
je near block
cmp di,912
je near block
cmp di,914
je near block
cmp di,916
je near block
cmp di,918
je near block
cmp di,932
je near hive
cmp di,934
je near hive
cmp di,940
je near hive
cmp di,942
je near hive
cmp di,974
je near block
cmp di,976
je near block
cmp di,978
je near block
cmp di,980
je near block
cmp di,982
je near block
cmp di,984
je near block
cmp di,986
je near block
cmp di,988
je near block
cmp di,1002
je near block
cmp di,1004
je near block
cmp di,1006
je near block
cmp di,1008
je near block
cmp di,1010
je near block
cmp di,1012
je near block
cmp di,1014
je near block
cmp di,1016
je near block
cmp di,1018
je near block
cmp di,1020
je near block
cmp di,1022
je near block
cmp di,1024
je near block
cmp di,1026
je near block
cmp di,1028
je near block
cmp di,1030
je near block
cmp di,1032
je near block
cmp di,1034
je near block
cmp di,1036
je near block
cmp di,1038
je near block
cmp di,1040
je near block
cmp di,1042
je near block
cmp di,1044
je near block
cmp di,1046
je near block
cmp di,1048
je near block
cmp di,1050
je near block
cmp di,1052
je near block
cmp di,1064
je near block
cmp di,1066
je near block
cmp di,1068
je near block
cmp di,1070
je near block
cmp di,1072
je near block
cmp di,1074
je near block
cmp di,1076
je near block
cmp di,1078
je near block
cmp di,1096
je near hive
cmp di,1098
je near hive
cmp di,1134
je near block
cmp di,1136
je near block
cmp di,1138
je near block
cmp di,1140
je near block
cmp di,1142
je near block
cmp di,1144
je near block
cmp di,1146
je near block
cmp di,1148
je near block
cmp di,1158
je near block
cmp di,1160
je near block
cmp di,1162
je near block
cmp di,1164
je near block
cmp di,1166
je near block
cmp di,1168
je near block
cmp di,1170
je near block
cmp di,1172
je near block
cmp di,1174
je near block
cmp di,1176
je near block
cmp di,1178
je near block
cmp di,1180
je near block
cmp di,1182
je near block
cmp di,1184
je near block
cmp di,1186
je near block
cmp di,1188
je near block
cmp di,1190
je near block
cmp di,1192
je near block
cmp di,1194
je near block
cmp di,1196
je near block
cmp di,1198
je near block
cmp di,1200
je near block
cmp di,1202
je near block
cmp di,1204
je near block
cmp di,1206
je near block
cmp di,1208
je near block
cmp di,1210
je near block
cmp di,1212
je near block
cmp di,1224
je near block
cmp di,1226
je near block
cmp di,1228
je near block
cmp di,1230
je near block
cmp di,1232
je near block
cmp di,1234
je near block
cmp di,1236
je near block
cmp di,1238
je near block
cmp di,1294
je near block
cmp di,1296
je near block
cmp di,1298
je near block
cmp di,1300
je near block
cmp di,1302
je near block
cmp di,1304
je near block
cmp di,1306
je near block
cmp di,1308
je near block
cmp di,1318
je near block
cmp di,1356
je near block
cmp di,1358
je near block
cmp di,1360
je near block
cmp di,1362
je near block
cmp di,1364
je near block
cmp di,1366
je near block
cmp di,1368
je near block
cmp di,1370
je near block
cmp di,1372
je near block

cmp di,1376
je near jumpExit1
cmp di,1378
je near block
cmp di,1380
je near block
cmp di,1382
je near block
cmp di,1384
je near block
cmp di,1386
je near block
cmp di,1388
je near block
cmp di,1390
je near block
cmp di,1392
je near block
cmp di,1394
je near block
cmp di,1396
je near block
cmp di,1398
je near block
cmp di,1454
je near block
cmp di,1456
je near block
cmp di,1458
je near block
cmp di,1460
je near block
cmp di,1462
je near block
cmp di,1464
je near block
cmp di,1466
je near block
cmp di,1468
je near block
cmp di,1478
je near block
cmp di,1516
je near block
cmp di,1518
je near block
cmp di,1520
je near block
cmp di,1522
je near block
cmp di,1524
je near block
cmp di,1526
je near block
cmp di,1528
je near block
cmp di,1530
je near block
cmp di,1544
je near block
cmp di,1614
je near block
cmp di,1616
je near block
cmp di,1618
je near block
cmp di,1620
je near block
cmp di,1622
je near block
cmp di,1624
je near block
cmp di,1626
je near block
cmp di,1628
je near block
cmp di,1638
je near block
cmp di,1644
je near block
cmp di,1646
je near block
cmp di,1648
je near block
cmp di,1650
je near block
cmp di,1652
je near block
cmp di,1654
je near block
cmp di,1656
je near block
cmp di,1658
je near block
cmp di,1660
je near block
cmp di,1662
je near block
cmp di,1664
je near block
cmp di,1666
je near block
cmp di,1668
je near block
cmp di,1670
je near block



cmp di,1676
je near block
cmp di,1678
je near block
cmp di,1680
je near block
cmp di,1682
je near block
cmp di,1684
je near block
cmp di,1686
je near block
cmp di,1688
je near block
cmp di,1690
je near block
cmp di,1712
je near block
cmp di,1774
je near block
cmp di,1776
je near block
cmp di,1778
je near block
cmp di,1780
je near block
cmp di,1782
je near block
cmp di,1784
je near block
cmp di,1786
je near block
cmp di,1788
je near block
cmp di,1790
je near block
cmp di,1792
je near block
cmp di,1796
je near block
cmp di,1798
je near block
cmp di,1800
je near block
cmp di,1808
je near block
cmp di,1830
je near block
cmp di,1836
je near block
cmp di,1838
je near block
cmp di,1840
je near block
cmp di,1842
je near block
cmp di,1844
je near block
cmp di,1846
je near block
cmp di,1848
je near block
cmp di,1850
je near block
cmp di,1852
je near block
cmp di,1854
je near block
cmp di,1856
je near block
cmp di,1858
je near block
cmp di,1860
je near block
cmp di,1862
je near block
cmp di,1864
je near block
cmp di,1866
je near block
cmp di,1868
je near block
cmp di,1870
je near block
cmp di,1872
je near block
cmp di,1874
je near block
cmp di,1876
je near block
cmp di,1878
je near block
cmp di,1880
je near block
cmp di,1882
je near block
cmp di,1884
je near block
cmp di,1886
je near block
cmp di,1888
je near block
cmp di,1890
je near block
cmp di,1892
je near block
cmp di,1934
je near block
cmp di,1936
je near block
cmp di,1938
je near block
cmp di,1940
je near block
cmp di,1942
je near block
cmp di,1944
je near block
cmp di,1946
je near block
cmp di,1948
je near block
cmp di,1968
je near block
cmp di,1982
je near jumpEnter1
cmp di,1990
je near block
cmp di,1996
je near block

cmp di,1998
je near block
cmp di,2000
je near block
cmp di,2002
je near block
cmp di,2004
je near block
cmp di,2006
je near block
cmp di,2008
je near block
cmp di,2010
je near block
cmp di,2012
je near block
cmp di,2014
je near block
cmp di,2016
je near block
cmp di,2018
je near block
cmp di,2020
je near block
cmp di,2022
je near block
cmp di,2024
je near block
cmp di,2026
je near block
cmp di,2028
je near block
cmp di,2030
je near block
cmp di,2032
je near block
cmp di,2034
je near block
cmp di,2036
je near block
cmp di,2038
je near block
cmp di,2040
je near block
cmp di,2042
je near block
cmp di,2044
je near block
cmp di,2046
je near block
cmp di,2048
je near block
cmp di,2050
je near block
cmp di,2052
je near block
cmp di,2094
je near block
cmp di,2096
je near block
cmp di,2098
je near block
cmp di,2100
je near block
cmp di,2102
je near block
cmp di,2104
je near block
cmp di,2106
je near block
cmp di,2108
je near block
cmp di,2108
je near block
cmp di,2110
je near block
cmp di,2112
je near block
cmp di,2114
je near block
cmp di,2116
je near block
cmp di,2118
je near block
cmp di,2120
je near block
cmp di,2122
je near block
cmp di,2124
je near block
cmp di,2126
je near block
cmp di,2128
je near block
cmp di,2130
je near block
cmp di,2132
je near block
cmp di,2134
je near block
cmp di,2136
je near block
cmp di,2142
je near block
cmp di,2150
je near block
cmp di,2156
je near block
cmp di,2158
je near block
cmp di,2160
je near block
cmp di,2162
je near block
cmp di,2164
je near block
cmp di,2166
je near block
cmp di,2168
je near block
cmp di,2170
je near block
cmp di,2170
je near block
cmp di,2172
je near block
cmp di,2174
je near block
cmp di,2176
je near block
cmp di,2178
je near block
cmp di,2180
je near block
cmp di,2182
je near block
cmp di,2184
je near block
cmp di,2186
je near block
cmp di,2188
je near block
cmp di,2190
je near block
cmp di,2192
je near block
cmp di,2194
je near block
cmp di,2196
je near block
cmp di,2198
je near block
cmp di,2200
je near block
cmp di,2202
je near block
cmp di,2204
je near block
cmp di,2206
je near block
cmp di,2208
je near block
cmp di,2210
je near block
cmp di,2212
je near block
cmp di,2184
je near block
cmp di,2186
je near block
cmp di,2188
je near block
cmp di,2190
je near block
cmp di,2192
je near block
cmp di,2194
je near block
cmp di,2196
je near block
cmp di,2198
je near block
cmp di,2200
je near block
cmp di,2202
je near block
cmp di,2204
je near block
cmp di,2206
je near block
cmp di,2208
je near block
cmp di,2210
je near block
cmp di,2212
je near block
cmp di,2254
je near block
cmp di,2256
je near block
cmp di,2258
je near block
cmp di,2260
je near block
cmp di,2262
je near block
cmp di,2264
je near block
cmp di,2266
je near block
cmp di,2268
je near block
cmp di,2270
je near block
cmp di,2272
je near block
cmp di,2274
je near block
cmp di,2276
je near block
cmp di,2278
je near block
cmp di,2280
je near block
cmp di,2282
je near block
cmp di,2284
je near block
cmp di,2286
je near block
cmp di,2288
je near block
cmp di,2290
je near block
cmp di,2292
je near block
cmp di,2294
je near block
cmp di,2296
je near block
cmp di,2302
je near block
cmp di,2310
je near block
cmp di,2344
je near block
cmp di,2358
je near block
cmp di,2360
je near block
cmp di,2362
je near block
cmp di,2364
je near block
cmp di,2366
je near block
cmp di,2368
je near block
cmp di,2370
je near block
cmp di,2372
je near block
cmp di,2428
je near block
cmp di,2430
je near block
cmp di,2432
je near block
cmp di,2434
je near block
cmp di,2436
je near block
cmp di,2438
je near block
cmp di,2440
je near block
cmp di,2442
je near block
cmp di,2462
je near block
cmp di,2470
je near block
cmp di,2472
je near block
cmp di,2474
je near block
cmp di,2476
je near block
cmp di,2478
je near block
cmp di,2480
je near block
cmp di,2482
je near block
cmp di,2484
je near block
cmp di,2486
je near block
cmp di,2488
je near block
cmp di,2490
je near block
cmp di,2504
je near block
cmp di,2518
je near block
cmp di,2520
je near block
cmp di,2522
je near block
cmp di,2524
je near block
cmp di,2526
je near block
cmp di,2528
je near block
cmp di,2530
je near block
cmp di,2532
je near block
cmp di,2588
je near block
cmp di,2590
je near block
cmp di,2592
je near block
cmp di,2594
je near block
cmp di,2596
je near block
cmp di,2598
je near block
cmp di,2600
je near block
cmp di,2602
je near block
cmp di,2622
je near block
cmp di,2636
je near block
cmp di,2638
je near block
cmp di,2640
je near block
cmp di,2642
je near block
cmp di,2644
je near block
cmp di,2646
je near block
cmp di,2648
je near block
cmp di,2650
je near block

cmp di,2678
je near block
cmp di,2680
je near block
cmp di,2682
je near block
cmp di,2684
je near block
cmp di,2686
je near block
cmp di,2688
je near block
cmp di,2690
je near block
cmp di,2692
je near block
cmp di,2736
je near beeC2Upper
cmp di,2740
je near beeC2Upper
cmp di,2742
je near beeEar
cmp di,2796
je near block
cmp di,2798
je near block
cmp di,2800
je near block
cmp di,2802
je near block
cmp di,2804
je near block
cmp di,2806
je near block
cmp di,2808
je near block
cmp di,2810
je near block
cmp di,2824
je near block
cmp di,2838
je near block
cmp di,2840
je near block
cmp di,2842
je near block
cmp di,2844
je near block
cmp di,2846
je near block
cmp di,2848
je near block
cmp di,2850
je near block
cmp di,2852
je near block
cmp di,2894
je near beeC1
cmp di,2896
je near beeC2Middle
cmp di,2898
je near beeC1
cmp di,2900
je near beeC2Middle
cmp di,2902
je near beeFace
cmp di,2938
je near block
cmp di,2940
je near block
cmp di,2942
je near block
cmp di,2944
je near block
cmp di,2946
je near block
cmp di,2956
je near block
cmp di,2958
je near block
cmp di,2960
je near block
cmp di,2962
je near block
cmp di,2964
je near block
cmp di,2966
je near block
cmp di,2968
je near block
cmp di,2970
je near block
cmp di,2972
je near block
cmp di,2974
je near block
cmp di,2976
je near block
cmp di,2978
je near block
cmp di,2980
je near block
cmp di,2982
je near block
cmp di,2984
je near block
cmp di,2986
je near block
cmp di,2990
je near block
cmp di,2992
je near block
cmp di,2994
je near block
cmp di,2996
je near block
cmp di,2998
je near block
cmp di,3000
je near block
cmp di,3002
je near block
cmp di,3004
je near block
cmp di,3006
je near block
cmp di,3008
je near block
cmp di,3010
je near block
cmp di,3012
je near block
cmp di,3098
je near block
cmp di,3106
je near block
cmp di,3158
je near block
cmp di,3160
je near block
cmp di,3162
je near block
cmp di,3164
je near block
cmp di,3166
je near block
cmp di,3168
je near block
cmp di,3170
je near block
cmp di,3172
je near block
cmp di,3258
je near block
cmp di,3318
je near block
cmp di,3320
je near block
cmp di,3322
je near block
cmp di,3324
je near block
cmp di,3326
je near block
cmp di,3328
je near block
cmp di,3330
je near block
cmp di,3332
je near block
cmp di,3374
je near block
cmp di,3376
je near block
cmp di,3378
je near block
cmp di,3380
je near block
cmp di,3382
je near block
cmp di,3384
je near block
cmp di,3386
je near block
cmp di,3388
je near block
cmp di,3390
je near block
cmp di,3392
je near block
cmp di,3394
je near block
cmp di,3396
je near block
cmp di,3398
je near block
cmp di,3400
je near block
cmp di,3402
je near block
cmp di,3404
je near block
cmp di,3406
je near block
cmp di,3408
je near block
cmp di,3410
je near block
cmp di,3412
je near block
cmp di,3414
je near block
cmp di,3416
je near block
cmp di,3418
je near block
cmp di,3420
je near block
cmp di,3422
je near block
cmp di,3424
je near block
cmp di,3426
je near block
cmp di,3428
je near block
cmp di,3430
je near block
cmp di,3432
je near block
cmp di,3434
je near block
cmp di,3436
je near block
cmp di,3438
je near block
cmp di,3440
je near block
cmp di,3442
je near block
cmp di,3444
je near block
cmp di,3446
je near block
cmp di,3448
je near block
cmp di,3450
je near block
cmp di,3452
je near block
cmp di,3454
je near block
cmp di,3456
je near block
cmp di,3458
je near block
cmp di,3460
je near block
cmp di,3462
je near block
cmp di,3464
je near block
cmp di,3466
je near block
cmp di,3468
je near block
cmp di,3470
je near block
cmp di,3472
je near block
cmp di,3474
je near block
cmp di,3476
je near block
cmp di,3478
je near block
cmp di,3480
je near block
cmp di,3482
je near block
cmp di,3484
je near block
cmp di,3486
je near block
cmp di,3488
je near block
cmp di,3490
je near block
cmp di,3492
je near block
cmp di,3534
je near block
cmp di,3536
je near block
cmp di,3538
je near block
cmp di,3540
je near block
cmp di,3542
je near block
cmp di,3544
je near block
cmp di,3546
je near block
cmp di,3548
je near block
cmp di,3550
je near block
cmp di,3552
je near block
cmp di,3554
je near block
cmp di,3556
je near block
cmp di,3558
je near block
cmp di,3560
je near block
cmp di,3562
je near block
cmp di,3564
je near block
cmp di,3566
je near block
cmp di,3568
je near block
cmp di,3570
je near block
cmp di,3572
je near block
cmp di,3574
je near block
cmp di,3576
je near block
cmp di,3578
je near block
cmp di,3580
je near block
cmp di,3582
je near block
cmp di,3584
je near block
cmp di,3586
je near block
cmp di,3588
je near block
cmp di,3590
je near block
cmp di,3592
je near block
cmp di,3594
je near block
cmp di,3596
je near block
cmp di,3598
je near block
cmp di,3600
je near block
cmp di,3602
je near block
cmp di,3604
je near block
cmp di,3606
je near block
cmp di,3608
je near block
cmp di,3610
je near block
cmp di,3612
je near block
cmp di,3614
je near block
cmp di,3616
je near block
cmp di,3618
je near block
cmp di,3620
je near block
cmp di,3622
je near block
cmp di,3624
je near block
cmp di,3626
je near block
cmp di,3628
je near block
cmp di,3630
je near block
cmp di,3632
je near block
cmp di,3634
je near block
cmp di,3636
je near block
cmp di,3638
je near block
cmp di,3640
je near block
cmp di,3642
je near block
cmp di,3644
je near block
cmp di,3646
je near block
cmp di,3648
je near block
cmp di,3650
je near block
cmp di,3652
je near block
cmp di,3784
je near block
cmp di,3786
je near block
cmp di,3788
je near block
cmp di,3790
je near block
cmp di,3792
je near block
cmp di,3794
je near block
cmp di,3796
je near block
cmp di,3798
je near block


        add di, 2
        cmp di, 3840
        je lowerBorder
        jmp nextPoint

    pop si
    pop dx
    pop bx
    pop di
    pop ax
    pop es
    ret
endScr:
	push es
	push ax
	push di
	mov ax ,0xb800
	mov es,ax
	mov di,0
nextPlace:
	mov word [es:di],0x6020
	add di,2
	cmp di,4000
	jne nextPlace
        pop di
	pop ax
	pop es
	ret
upperBorder:
    mov word [es:di], 0x1000
    add di, 2
    cmp di, 160
    jne upperBorder
    jmp nextPoint

leftBorder:
    add bx, 160
    mov word [es:di], 0x1000
    add di, 2
    jmp nextPoint

rightBorder:
    mov word [es:di], 0x1000
    add si, 160
    add di, 2
    cmp di, 3840
    je lowerBorder
    jne nextPoint

lowerBorder:
    mov word [es:di], 0x1000
    add di, 2
    cmp di, 4000
    jne lowerBorder
    jmp trail

ptrBlocks:	
    call clrScreen
    push es
    push ax
    push di
    push bx
    push dx
    mov si, 0
    push si

    mov ax, 0xb800
    mov es, ax

    mov bx, 160 ; moves to next line
    mov si, 318  

    nextPoint1:
        mov word [es:di], 0x0000
	mov cx, 80
mov di, 0
	ch1:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed
	add di, 80
	add cx, 160
ch2:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed2
	add di, 80
	add cx, 160
ch3:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed3
	add di, 80
	add cx, 160
ch4:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed4
	add di, 80
	add cx, 160
ch5:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed5
	add di, 80
	add cx, 160
ch6:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed6
	add di, 80
	add cx, 160
ch7:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed7
	add di, 80
	add cx, 160
ch8:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed8
	add di, 80
	add cx, 160
ch9:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed9
	add di, 80
	add cx, 160
ch10:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed10
	add di, 80
	add cx, 160
ch11:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed11
	add di, 80
	add cx, 160
ch12:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed12
	add di, 160
	add cx, 240
ch13:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed13
	add di, 80
	add cx, 160
ch14:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed14
	add di, 80
	add cx, 160
ch15:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed15
	add di, 80
	add cx, 160
ch16:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed16
	add di, 80
	add cx, 160
ch17:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed17
	add di, 80
	add cx, 160
ch18:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed18
	add di, 80
	add cx, 160
ch19:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed19
	add di, 80
	add cx, 160
ch20:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed20
	add di, 80
	add cx, 160
ch21:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed21
	add di, 80
	add cx, 160
ch22:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed22
	add di, 80
	add cx, 160
ch23:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed23
	add di, 80
	add cx, 160
ch24:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed24
	add di, 80
	add cx, 160
ch25:
	cmp cx, 4002
	je near end
	cmp di, cx
	jb near blockRed25
	add di, 80
	add cx, 160
    pop si
    pop dx
    pop bx
    pop di
    pop ax
    pop es
    ret


blockRed:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch1

blockRed2:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch2

blockRed3:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch3
blockRed4:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch4
blockRed5:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch5
blockRed6:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch6
blockRed7:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch7
blockRed8:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch8
blockRed9:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch9
blockRed10:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch10
blockRed11:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch11
blockRed12:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch12
blockRed13:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch13

blockRed14:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch14

blockRed15:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch15

blockRed16:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch16
blockRed17:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch17
blockRed18:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch18
blockRed19:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch19
blockRed20:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch20
blockRed21:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch21
blockRed22:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch22
blockRed23:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch23
blockRed24:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch24
blockRed25:
    mov word [es:di], 0x4000
    add di, 2
    jmp ch25
block:
    mov word [es:di], 0x1000
    add di, 2
    jmp nextPoint

hive:
    mov word [es:di], 0x8EDF
    add di, 2
    jmp nextPoint



beeC1:
    mov word [es:di], 0x6000
    add di, 2
    jmp nextPoint
    
beeC2Upper:
    mov word [es:di], 0x87DB
    add di, 2
    jmp nextPoint

jumpEnter1:
    mov word [es:di], 0x5000
    add di, 2
    jmp nextPoint

jumpExit1:
    mov word [es:di], 0x5000
    add di, 2
    jmp nextPoint

jumpEnter2:
    mov word [es:di], 0x5000
    add di, 2
    jmp nextPoint

jumpExit2:
    mov word [es:di], 0x5000
    add di, 2
    jmp nextPoint

beeFace:
    mov word [es:di], 0x6040
    add di, 2
    jmp nextPoint

beeEar:
    mov word [es:di], 0x702F
    add di, 2
    jmp nextPoint
    
beeC2Middle:
    mov word [es:di], 0x86DF
    add di, 2
    jmp nextPoint


JumpPinkRight:
    cmp di, 1374
    je back
    mov word [es:di],0x7000
    mov di, 1536
    mov byte [es:di],'v'
    jmp backInRight
    back:
    mov word [es:di],0x7000
    mov di, 1984
    mov byte [es:di],'>'
    jmp backInRight

JumpPinkLeft:
    mov word [es:di],0x7000
    mov di, 1536
    mov byte [es:di],'v'
    jmp backInLeft

JumpPinkDown:
    cmp di, 1216
    je back1
    mov word [es:di],0x7000
    mov di, 1536
    mov byte [es:di],'v'
    jmp backInDown
    back1:
    mov word [es:di],0x7000
    mov di, 1984
    mov byte [es:di],'>'
    jmp backInDown

JumpPinkUp:
   
    mov word [es:di],0x7000
    mov di, 1822
    mov byte [es:di],'^'
    jmp backInUp
  
MoveLeft:
        mov word [es:di],0x7000
        sub di,2
        mov byte [es:di],'<'
        jmp backInLeft

MoveRight:
        mov word [es:di],0x7000
        add di,2
        mov byte [es:di],'>'
        jmp backInRight

MoveDown:
        mov word [es:di],0x7000
        add di,160
        mov byte [es:di],'v'
        jmp backInDown

MoveUp:
        mov word [es:di],0x7000
        sub di,160
        mov byte [es:di],'^'
        jmp backInUp
Key:
    push ax
    push es
    mov ax, 0xb800
    mov es, ax

    rightKey:
      in al,0x60
      cmp al,0x20
      jne leftkey
      cmp word [es:di+2],0x5000
      je JumpPinkRight
      cmp word [es:di+2],0x1000
      jne MoveRight
      backInRight:
      

leftkey:
        cmp al,0x1E
        jne downkey
        cmp word [es:di-2],0x5000
        je JumpPinkLeft
        cmp word [es:di-2],0x1000
        jne MoveLeft
        backInLeft:

downkey:
        cmp al,0x1F
        jne upkey
        cmp word [es:di+160],0x5000
        je JumpPinkDown
        cmp word [es:di+160],0x1000
        jne MoveDown
        backInDown:

upkey:
        cmp al,0x11
        jne nomatch
        cmp word [es:di-160],0x5000
        je JumpPinkUp
        cmp word [es:di-160],0x1000
        jne MoveUp
        backInUp:
nomatch:
       
       mov al,0x20
       out 0x20,al
       
        pop es
        pop ax    
        jmp far [cs:oldIsr]
        iret


trail:
     xor ax,ax
     mov es,ax
     mov ax,[es:9*4]
     mov [oldIsr],ax
     mov ax,[es:9*4+2]
     mov [oldIsr+2],ax
     mov di,2904
     cli
     mov word[es:9*4],Key
     mov [es:9*4+2],cs
     sti
     end: 
    cmp di,776 ;place pixel postion when pointer reaches honeycomb
    je endscr
    cmp di,778 ;place pixel postion when pointer reaches honeycomb
    je endscr
    cmp di,932 ;place pixel postion when pointer reaches honeycomb
    je endscr
    cmp di,934 ;place pixel postion when pointer reaches honeycomb
    je endscr
    cmp di,940 ;place pixel postion when pointer reaches honeycomb
    je endscr
    cmp di,942 ;place pixel postion when pointer reaches honeycomb
    je endscr
    cmp di,1096 ;place pixel postion when pointer reaches honeycomb
    je endscr
    cmp di,1098 ;place pixel postion when pointer reaches honeycomb
    je endscr
    jmp end
    ret

    endscr:
    push es
    push ax
    push di

    mov ax, 0xb800
    mov es, ax
    mov di,0	
    nextpos1:
        mov word [es:di], 0xA000
        add di, 2
        cmp di, 4000
        jne nextpos1
	mov byte [es:1990],'G'
	mov byte [es:1992],'A'
	mov byte [es:1994],'M'
	mov byte [es:1996],'E'
	mov byte [es:1998],' '
	mov byte [es:2000],'O'
	mov byte [es:2002],'V'
	mov byte [es:2004],'E'
	mov byte [es:2006],'R'
    pop di
    pop ax
    pop es
    ret
start:
   mov ax, 0xb800
   mov es, ax
   mov di, 0
   call clrScreen
   call ptrScreen
   mov ax,0x4c00
   int 0x21