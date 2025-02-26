const products = [
    {
        id: 1,
        name: "MSI",
        description: "Laptop MSI Cyborg 15 A12VE-412VN 15-12450H) (Đen)",
        price: "21.490.000 ",
        oldPrice: "24.990.000 ",
        discount: "-14.01%",
        image: ["https://lh3.googleusercontent.com/UHRy49K22v6ZR9vAqkqyfza3r4rLGmpRimlxnBrN0N2G18LVGuRGWkXjuxeFBa-BUJVxcy4XVjshwstzw21BU2n3sJjybpp_=w230-rw","https://lh3.googleusercontent.com/0ntdYBLyD-CqIQi3dRY8vD1BSp5jiuYPNC4aWv12_adS1uvzhxiVyi43ZSCDL65BWV557agLs-DOxsGVz6eY96ZDleW2CNkC=w1000-rw","https://lh3.googleusercontent.com/yT7DOZLSYrJyakIYRUnC1XeBSgWgMRgQbGsrDJWzfdJ_ZrK3GlZwa9glwP4-6b-n-cUxFYeh64EZvSQie9huGbr14MTP7t4=w1000-rw","https://lh3.googleusercontent.com/wrg34YiNpvwwgN6c_5oLXd5DReU9ZddVQE8YmWyDccrVM8z9oZlnRzRqRQ9H6gFfvQjfZCWkohq8TOUrZarSrQwz0WOZ3Wql=w1000-rw","https://lh3.googleusercontent.com/tSUtVJvhxRsYClMobOoQY-8GAyMTzaw-BYWE0c6cbT68GAHJvE8rPqIig4MePmlIRIMT9IMY0fMzAiSKrl1xQzaUGgO5Kvw=w1000-rw","https://lh3.googleusercontent.com/MOQxqkQm1QVj26OscrZPu-vAsFbs2thlWow5S7WpGq-Mxab0uY559ZlIP0YxorldsklECGv4PAcT-gXcuc3tfGka3BINAKloKw=w1000-rw"],
        
    },
    {
        id: 2,
        name: "ACER",
        description: "Laptop Acer Nitro 16 Phoenix AN16- 41-R5M4 (Đen)",
        price: "25.990.000 ",
        oldPrice: "29.990.000 ",
        discount: "-13.34%",
        image: [ "https://lh3.googleusercontent.com/qJPXGdBoG3GcUyRZ3gOLFfRg6dQVgpFNpWfiFU8PkZ4PyIUAsUroZnSfmaf9UWIEGfIPMApERy4A_3l24xiJuucFYAB4MtH7xg=w1000-rw",
            "https://lh3.googleusercontent.com/O-tkUt47LWDmgdtBakYZjz6PNcIAxka1d4YTZ8gIdhI1CCv3FnviDFchVAOShjwzs_fT2Zk0eM0Los09p7rqLLvdddi0uu8=w1000-rw",
            "https://lh3.googleusercontent.com/sXRIyR2SC7BqxCIvuKKQB6OjCY8Mbo7fRRQdg7xDRpj5W1XftRZLcjaeeSW1jxSGA6Mm-bqBCvHfPVxFrZN88lszeXDW9b9b=w1000-rw",
            "https://lh3.googleusercontent.com/5W6GftdD1kI5hDClc4wvFuCOeWIQI-oaxbjQ3rEjfPgstf1CkkkAIcjLWyeLSYeXyYbdJFTEbsCpdoAb2HCJTkV1mASJESlr=w1000-rw",
            "https://lh3.googleusercontent.com/4kjNr7Q92ZTyVDnSxpLusavVmWdf14kmf0UyxSFnQaiHrZaD9W3O9pNQcJUXlU4-405_q2AEvnAtbrY7x-sfymPq9lbg8WR7=w1000-rw",
            "https://lh3.googleusercontent.com/v3HH1JRFJL5eNmi3GH5wOmhqk2pcsh-T44JR8Qq8aqMeEh8MxNMdQ7uglLovgmycDPyLx0tnwe1SwWMYkKpwoHxTHelrntU=w1000-rw"],
        
    },
    {
        id: 3,
        name: "ACER",
        description: "Laptop Gaming Acer Nitro 5 AN515-57-77KU NH.QDGSV.001",
        price: "25.990.000 ",
        image: [
            "https://lh3.googleusercontent.com/c7VuA4P8sHHJCilfzRVp50AQmgZEkJOyOCuh4vvkcT9jxfqTzZVd2gepUFSSqzXVSEljnYlAN319sJD-H1IztNcxPT3UypA=w1000-rw",
            "https://lh3.googleusercontent.com/VpJgldxtdddsmBwMTP0iqPG4-W0WAKCTFE3iYe7XUaXUhvFvePH514GCSoH2TDLHiMOYxKSzRh7hCsmdM1429r-tk_8haRUr3Q=w1000-rw",
            "https://lh3.googleusercontent.com/kpxJEY3p1mLKsaiQdUuL8gK_JPyrawmy_oxRXlU9b_p9TrrPo3hQOBhlXXutOyDABYTmxgnuuDkutPg0VgbUls42ctkH5WXY=w1000-rw",
            "https://lh3.googleusercontent.com/_8W1EMpxpcb_lDJ-nhGMxsqP-ja6GW8iZHwREklHxrkkHcZxEKJTEyaRq817_McgSwXR0e0dQpvl2DxrjumLjU8-3L6u4xpI=w1000-rw",
            "https://lh3.googleusercontent.com/eOT1uNpQy6j-EBoWZTZfelVhvIppYxHOUv27da3RWHyZAj89Wtf1p-qxmVNZnrnkyE8-k9mXQB_r3f19Z1dA5Oy2fgM3lOws=w1000-rw",
            "https://lh3.googleusercontent.com/DY4nUu6snSsCeNmr0I2blgMRo_nY3FMgy2x1ZY8SNgTsPKI02qh5ZMU99qhkZnxS0lZds6-3o4GekAB806VNLFPQfKsZscML=w1000-rw"
          ],
        
    },
    {
        id: 4,
        name: "ASUS",
        description: "Laptop Asus Vivobook co 151 E1504FA-NJ454W (AMD Ryzen 5-7520U)",
        price: "12.490.000 ",
        oldPrice: "34.400.000 ",
        discount: "-13.89%",
        image:[
            "https://lh3.googleusercontent.com/HZD5OT46UUW2I6L5uOEM-JAa9NAFFVnX6rhNoh9Ji5-6QXUKZhNj7Fnz7bazp_PP17VofAKIL3jHRcu5bnJyX4RuRpqD5cE4=w1000-rw",
            "https://lh3.googleusercontent.com/UleucPwM1Ht33PoUPD-5kmLohkc_E1xGvUApBkkyqrt-570vgu9jDaNEPjhNrxtBs6pKMEj0b2IcptoCCYqelbF0Ed6PLA7a=w1000-rw",
            "https://lh3.googleusercontent.com/S7sQtcEg3VvIdRPRfv_T26-PKe0mV5R-D0uPojkzHGgqi1aTnvD5EWKuOG1tTJXWkvVBt79rw86ZFFR9z9t_5GSzPtSOEmgNsw=w1000-rw",
            "https://lh3.googleusercontent.com/N6NvgYonyEhzb5NdE3nImCDu7YCpv7iYw8b2m6Alldevu_esNSKwQiT8S89O74QO--4zkqLEuu7d4CfQ-9YPyCKE6vfZzrA=w1000-rw",
            "https://lh3.googleusercontent.com/zo5gebLOfJCvycGwtjk55IYcMK-LvlEEVcXnxOsfSmmpejRsp6xDZ4-7El-tQ94otEvmVLYCeAVuYULj_kHGduZEHHBmwO7Vnw=w1000-rw",
            "https://lh3.googleusercontent.com/-64mAAh1v7YvF8EZJilYFUYG18p28UAP-cQFWKj9eNurySGhKV92VOfjtysKE4hAMANsmrfkC9SbVqr0XqHCpvlGFQmXSHo=w1000-rw"
          ],
        buttonLink: "Laptop Asus.html"
    },
    {
        id: 5,
        name: "APPLE",
        description: "MacBook Air M1 2020 13 inch (8GB/256GB SSD)",
        price: "18.190.000 ",
        oldPrice: "28.990.000 ",
        discount: "-37.25%",
        image: [
            "https://lh3.googleusercontent.com/FJXZwbdNf3jQLCAxV1sgQ6yizEZ9MJyACl9S27_Wv5qK1p8VXDrO-Jz6kxGFRrpm8xaSYtSLPQO5M_jqISsBXW_3FiQREUc=w1000-rw",
            "https://lh3.googleusercontent.com/ONfpwbG7nCVQMFQgvC4CSww2H2JN1pU-d41Kwt5oArWefNMumGC-Om216xjqOOR2azfLWBNudml5XgmYizhQa-w1gx1ZChfT=w1000-rw",
            "https://lh3.googleusercontent.com/Ezh1zisXToaMPP30pXE50dnotXpEyxnGsYpbd6uZc6jEWRWhMrMY2EDuXNcWPhw4nfcwwC-mGGVEkkRtRSJE0P3hRPuvCjw=w1000-rw",
            "https://lh3.googleusercontent.com/cA85Py5_6ISA-570gou6L6nAo1ncmHpwF5Mf7AQoThBmU-Z-Fn82q076jS8mlzCq2LIjWIwVf_mJFdwyKBd42eZbW-zbBju9=w1000-rw",
            "https://lh3.googleusercontent.com/3DUOB4j1aGh8-EsOTtD2N0VEiauF_8Jh8EEQS6k1NpDM5YVAcpkZcVeOUHfSoY_8Tg6NB2AsyddeTjJxb0J2vCN5G4e8rpOjIQ=w1000-rw",
            "https://lh3.googleusercontent.com/VtyQ7iUQ8gD5FL2-YSv0jMjpjr6iHqZEYKOQuEj74c6sCT8_FrZiC0Jjox8S_ekLKHQTE5njWSqMzoOaIxEkIeynyhdkwNem=w1000-rw"
          ],
        
    },
    {
        id: 6,
        name: "APPLE",
        description: "iPhone 15 Pro Max 256GB",
        price: "29.290.000 ",
        oldPrice: "34.990.000 ",
        discount: "-16.29%",
        image: [
            "https://lh3.googleusercontent.com/oIKL0KBpBIEGcqIJrB3PNzF_tz8Bu9JkwLwjYoQ737_NwMI9q0jpR0_7myADR2xcPZsA6XpPIClDpBGLvA1hd71xQpgVXUhSpA=w1000-rw",
            "https://lh3.googleusercontent.com/sxZxR4ElTRqRP6Cm5G7zEy_oP2jz_NSbaL-8Ni2G_qzaICoyspSbuNXo8qmqD8Um3uNXU-5iUCFsEuPQMzncSxAVQ5ztz7ew=w1000-rw",
            "https://lh3.googleusercontent.com/9Z-1pP0nJOQWF9qaEm1f6wBBTtKDJMTYh6J3nGv2XghEUyBGsQdzQBZTMLNBtK_Oyp4OT7XsUoyuyergUZyTngWEK1K_NVw=w1000-rw",
            "https://lh3.googleusercontent.com/pxTbavK4YAfhBvZ3vPUaskIGB3RkFMMyVQPH5wEVEkP6WH8XCgpMB3FU_fWz_bLEd195ekZmj7-KKHWZNDFJPMh1JOy77dw=w1000-rw",
            "https://lh3.googleusercontent.com/Shi7SLoGjwOr081pDpDdHXtuJSuxQBvRjR7GmUiX2ojLBjZdfWO8ylIN_DkDrty6x_2201CambtRPjUCYsZWetl4dBNi7gyQuA=w1000-rw",
            "https://lh3.googleusercontent.com/xlfglOHHule7ypQud7gApUes3XbKWxcjFx9FpPSIZV2lCIepRt35PojJmZdHWhFdFYY1Ha2KyGf-AuJkZdUer0tf_F0fow_g=w1000-rw"
          ],
        
    },
    {
        id: 7,
        name: "ACER",
        description: "Laptop Acer Nitro 5 Tiger AN515-58- 52SP",
        price: "21.490.000 ",
        oldPrice: "24.400.000 ",
        discount: "-21.13%",
        image: [
            "https://lh3.googleusercontent.com/CYSfdYN-XDOrBSR9BHkeqUcO2kKBBgct5QTTdvOPiWegjw7t38q9dkIfqTh8FQaaGuZwig_0UMpJddSwkGK-e51e5C_Bu-iu=w1000-rw",
            "https://lh3.googleusercontent.com/tTLvEbGDX7ydz-n-n85yj1OiNHiLBvlJZZ5ftJUUKDKDAs5nTiuOqJEgmHDkZCQ9odEr0qyCwBfzAybEBWDQE4YVR0b3r7OQUQ=w1000-rw",
            "https://lh3.googleusercontent.com/vxtMlqkOdaViU7F5FEcRmYb0emyP-z8cxOyfsqqOWi6ZCb_yK03CcSWT5KovzLnWf9MNKrAgu-ObJjB64YccVU3MUDtB0xs=w1000-rw",
            "https://lh3.googleusercontent.com/S6VcHbANR1Qh7WsbW3nj6zfCbuUWOj_NOl9NadgnxTi3vjd_byv2tup5u4n5MI1d3e0BpYJyLYYyiAQyk35xFuP2xGMrWgLjgw=w1000-rw",
            "https://lh3.googleusercontent.com/7jBgNEEyzeD7BleG4UN394AAeyxImuEcGE9RQP9QlDeGmx6P6xqX0kRqfwMSmoPSp3S-M1qWMdG6AtQCKXc9I2IyH31_2Yrv=w1000-rw",
            "https://lh3.googleusercontent.com/lbHY_zKAtcjGbgcS49uBK6pKBdFFmGPNfw4m78bAsJ938tfH7ptu_BDYH9e5tft3iDBwUrVDPbosk420mEyQcd5w3vfPcXec=w1000-rw"
          ],
        
    },
    {
        id: 8,
        name: "PHONG VŨ",
        description: "PC PV Home Office 50096 (15 12400/8GB/500GB SSD/No OS)",
        price: "9.149.000 ",
        oldPrice: "11.990.000 ",
        discount: "-23.69%",
        image: [
            "https://lh3.googleusercontent.com/mrPf1yqWDsCvuJVBe1VXGfykx3cQidWyQlweKNFYVzbvs1wZGT1BzejpkTddGFwuzxaqkVpp8AWb7xO2OxF_g6XShEsInwj7yg=w1000-rw",
            "https://lh3.googleusercontent.com/JJYBT9AlQ21u2da5qcwWAb2EKa5cOEPjefqpywL67limgrbFmpED_gYpBfOABRNDPOjlyw2H1h9Niw9CRtaLEMdAIXke0ahRuA=w1000-rw",
            "https://lh3.googleusercontent.com/z93PUuJatArrCl0-ZkuOKaWcHKbeeHPLi4AtAFMX6DSOQVyD-Id04lN9QvLJk1yese4vRgRmuaOZrfxtf-W94Fsl5chVU__ejw=w1000-rw",
            "https://lh3.googleusercontent.com/y73Bd0KPRKBVUYR017a0IWUMasob7bJ_Uxt1ZEo7pF8YLSwtuZ_zyk2oybDHcrCicN0u0CRNb-I8UixhDGuadgXItEdODPA=w1000-rw",
            "https://lh3.googleusercontent.com/JJYBT9AlQ21u2da5qcwWAb2EKa5cOEPjefqpywL67limgrbFmpED_gYpBfOABRNDPOjlyw2H1h9Niw9CRtaLEMdAIXke0ahRuA=w1000-rw",
            "https://lh3.googleusercontent.com/mrPf1yqWDsCvuJVBe1VXGfykx3cQidWyQlweKNFYVzbvs1wZGT1BzejpkTddGFwuzxaqkVpp8AWb7xO2OxF_g6XShEsInwj7yg=w1000-rw"
          ],
        
    },
    {
        id: 9,
        name: "INTEL",
        description: "CPU INTEL Core 15-12400 (6/12 2.50 GHz - 4.40 GHz, 18MB) - 1700",
        price: "4.170.000 ",
        oldPrice: "6.404.000 ",
        discount: "-39.24%",
        image: [
            "https://lh3.googleusercontent.com/wxwqYcEobO1IblY-dsEHmX1ilKSvQ2T28F0TnS7EI-dMslwjiBSivvjBAqu73-C1Oqd_cM7XYfMS_8Zerpvm67go4IZ9xcKA=w1000-rw",
            "https://lh3.googleusercontent.com/pu-sqz5GEdEzRXnM-_8Dl31J3IzdGRMgBfdyfbgPR2MpqK4QCdVWlS0RvNyZOKdT31O-yZRhkIILOhBq3czvOywuUO8WNiez=w1000-rw"
          ],
        
    },
    {
        id: 10,
        name: "PHONG VŨ",
        description: "PC PV Gaming AN50141 (intel core ty 12/00r12x 1603/50068.)",
        price: "47.990.000 ",
        image:  [
            "https://lh3.googleusercontent.com/WWMmE9hXFfwygBZ76CXqy6GEMQxGJmse9DZfuHLF0CfAzx-XMOzyAfwYLxnlYfpBTRjvSz-xmpMbPh-as5wHH5H6Gg5QMWG2=w1000-rw",
            "https://lh3.googleusercontent.com/ZAfc_6yJt6j3eNicbcWjREm3ZeSOJnqNqEb0BZWh850ab6XcbLAVPQYWvyukLa5HYR3k0jdlJR5k4CZtSlnbWzfGaOz7j_Xi=w1000-rw",
            "https://lh3.googleusercontent.com/Fuif7nhpiA89FprCOdcORZFTnGwztV-rN-WdPgv5N7lSfeOvCKUodj4b2w6HJFA248oy-FdyxJlcNvqipveV2_w4W0M6BKg=w1000-rw",
            "https://lh3.googleusercontent.com/mhYo_HXpVVEXVI_YobI6fEUSubwtPvUxaNAwL6TFe16wOrDJZ0XTRJ_rboGE0smdb0adtDtfueKmNXk0kfOSjI0UdBg6vfvI=w1000-rw"
          ],
        
    },
    {
        id: 11,
        name: "DELL",
        description: "PC Dell Mienware Aurore Rix /029/352 (Intel Core 19)",
        price: "119.390.000 ",
        image:  [
            "https://lh3.googleusercontent.com/GgKzB36oYnTEarjq9qpKs5Nz7WWTc4kihUcmNLMWCz0ZXuGYiBDHpwLJ6CGpIFrHNwJ_IlzhaMA79uU1U2MbP9__gNVuvOg=w1000-rw",
            "https://lh3.googleusercontent.com/w4IRh-M1NYPPtnkRlyHP_9g8KxWaqNMILJeiRpNuxeqQ0pbF-jvo-v-rN10qpDoSIezxMTl1xwzKYBrmkinq-2OeC9hJXddk=w1000-rw",
            "https://lh3.googleusercontent.com/gT3uYxnD1q4qBci8OaLpMBMgdOnR0v3dOZgHSCCxIJp0r6zc5Gc7f9y5MCFCNSkBUa5esE51mIfHgP9KdYoH3r7ntSQeGORD=w1000-rw"
          ],
        
    },
    {
        id: 12,
        name: "PHONG VU",
        description: "PC Phong VŨ Gaming IN50131 (Intel Core I5 12400F/2x8GB/S12GB)",
        price: "16.190.000 ",
        oldPrice: "20.290.000 ",
        discount: "-20.21%",
        image: [
            "https://lh3.googleusercontent.com/fjXgyKh_vEZshd7lhhFGEy0rOeiiZw1hEQHk4XRStecLwHmhcBSEpsmmJ5r0WGn_cDnsZRgCVGC_5jhcLGR4W2b_olPj1fWZ=w1000-rw",
            "https://lh3.googleusercontent.com/EWAgvvVEVhxkaeMzgbEyt9oEMKYwDhl6NzHdpVgyE92QriRhbWR4dvdC6AmDGGtUZegRPCa3Ykz2QbUDgsDfseM6TVl9UDmj=w1000-rw",
            "https://lh3.googleusercontent.com/SlgTluPx0K9VIqK2sRRnkQD2cWFgDJ8_SxwwtRP_hIuJ2Rxn-z9HQowcRN54MrhiJnRyzxeJ9WNCvSTY-fxchZwr1ejrAZM=w1000-rw",
            "https://lh3.googleusercontent.com/zU9t1OSqusou8j6PEdtS-h0A7ItcQsQFO1b9Zg0hHWuikbijwgLRihpGBDZRURmkGwrrALcVOZDh6LXs3X7bxKFe0qeIYwDW=w1000-rw",
            "https://lh3.googleusercontent.com/_B5b1qXJfRz3jWUq5uKk_wu9x8OGzvX3hbZxUiDLCXcfYCyvzQpbFM7_PUiia0fQD1MLfRs7Ckh4AMTl-wUOKeTzHFX24RE0=w1000-rw"
          ],
        
    },
    {
        id: 13,
        name: "HP",
        description: "PC HP ProOne 440 G9 AIO 6M3X9PA",
        price: "22.290.000 ",
        oldPrice: "23.190.000 ",
        discount: "-3.88%",
        image:  [
            "https://lh3.googleusercontent.com/_4DKkA7CukNdGLBxHtVEyuRmRxCIZmUhAC4UtmJQbtNFBaHgFRDxikUhik9RiWnXCmzY4xyxf3IrU_dUhX7ia61_4nEwGnoChw=w1000-rw",
            "https://lh3.googleusercontent.com/QxjIFvjVIXrKt1fJ7YTvCdCILICkwgbkqPtFVwloWCWlKnQAOZXTCp_SSzhqC1G7Dvu2FI3nLxhDEyyTeS9x8U1Q-iG3ddKRNA=w1000-rw",
            "https://lh3.googleusercontent.com/4hRr4hYXEMha9ZxbPsmPMCpdjpVid7KS8i8VJyQwNaDHZpplsusfaJBhVI9uvPsl8peIBnJHGNAFXMiviXVYKRR47FPNNrPE=w1000-rw",
            "https://lh3.googleusercontent.com/HPmYasKMwVbp7cfhSFhH7GIOB9oqHVJn9ywG0Nn_PHYy-vMbolct9qbggBwCJMKeX5IEz7QxzDZowH_0zuR7a2y2zxaA4i9P=w1000-rw",
            "https://lh3.googleusercontent.com/aEINIa5JJUbOu44EGgbr7xHKhvHJEaU0hT8wKCgtAw6eYEP804e0brIVyo-zuP1pJFrPfh5mwn-yM49ZmHfD3MUVYRF3Pm5u=w1000-rw",
            "https://lh3.googleusercontent.com/N7uexiy0DmekZKK7hHD4MzLZFf0xnuqKQRMO1wurXL2L5pJnNsg80_WdUHcFH7fAXKYhs3zM-xGEZk0R4pg3QZc6987RlE02=w1000-rw"
          ],
        
    },
    {
        id: 14,
        name: "APPLE",
        description: "(L)iên hệ ặc hãng) Apple MacBook Pro M3 Max 16.2' (48/118 5501)",
        price: "112.290.000 ",
        image:  [
            "https://lh3.googleusercontent.com/9v31AmyN1h59CQpof38f8Pb8OzzpCqsNDPaM6uPg4j_nOJs5xEVPDvaX6PgLLVZNi_lxj2jrRADdWmCYLwXOHX2gi9YfQXv7=w1000-rw",
            "https://lh3.googleusercontent.com/cetTL2XdwnLHFmC3jVEbaoGGOsNhD5Y1ZWgwRtCeZhXjT661LKNPryfVT1oEvjPbdBLQWJQvsIxlgeZq5qRIffnYUbB8j5w=w1000-rw",
            "https://lh3.googleusercontent.com/VSPISEFg-MSsKc3bbnkks-qEeVn5SK6m_9r_SPZrl6oiHU3EfRAOYEYmEuxTfS0mXYMDT3mbh8OrSQ4m6LRUfVCe1KxDnK6u=w1000-rw",
            "https://lh3.googleusercontent.com/r9OTEDuixqpaf5soSbPbL6kegSKgKY-Ehe2vUIFvoII4tQoOFoJEDaJyORPO1QESVW_bxPxvXmaiyUnC2VdsU8sZyv2yIdk=w1000-rw",
            "https://lh3.googleusercontent.com/pKYuo46roG6x5mSTO-QcLXMAhEEsjd_I9kN5sH4KKBTI6WIMXXJrutAUUdk98_O5cA1tJONsHUB54e4WOyRUjZ4sPtQBGlk=w1000-rw",
            "https://lh3.googleusercontent.com/gRbA70k7KyxSkew17EzA1Uh4sD2J3YzN-G2eJONQa0zZwR3Ov7dt_0ts8z35ppfmElGWiStpJUpGYxWVjyCMYHvE5N0ejxjk=w1000-rw"
          ],
        
    },
    {
        id: 15,
        name: "ZIDLI",
        description: "Tai nghe không day Gaming ZIDLI AH1 (2.4G/ 7.1 & RGB Real)",
        price: "1.099.000 ",
        oldPrice: "1.190.000 ",
        discount: "-7.65%",
        image:  [
            "https://lh3.googleusercontent.com/ED5MUbQIdVT0zZdAemq7qRS_5IfFYr2ErIqHjTzL3hoV7hoD6Yjd3p9DH8M1KXaxImG1-nJffUT9ssnQZ0yIumFGCDAubqY=w1000-rw",
            "https://lh3.googleusercontent.com/QlUWcIlwgiKWSzre5kYffTQdGf3RgUYatcEa_RMhg5j1_i6Clvehd8BkEha-Fdg72fKieta7VMn4d_QQHAQkdEZPFv2kj6c=w1000-rw",
            "https://lh3.googleusercontent.com/FqNe8pcvKhiQfJ6Sop10DLlWKOMoNstfYSGKRmFdagAb6W7ZGVvLiKrHvhYsz0ehhEaex4oFcOAhIYBF659v-Vw-yfzSTIlG=w1000-rw",
            "https://lh3.googleusercontent.com/zpWa4atVjSyWvZH-cJ-s3sleNTCk0yag5e7HWVgkbfnxYaCCR55wCdnzloNtOUS9DRAq2zugorbf6nnpm2NWJrL51f06znf_cA=w1000-rw",
            "https://lh3.googleusercontent.com/zpWa4atVjSyWvZH-cJ-s3sleNTCk0yag5e7HWVgkbfnxYaCCR55wCdnzloNtOUS9DRAq2zugorbf6nnpm2NWJrL51f06znf_cA=w1000-rw",
            "https://lh3.googleusercontent.com/5H7VTOaAXUozvV7nKMUUpU1P4KmwzAO_Ywh-21XhIV8NsvdgshP77vt33HeTStui9Ei_DxYW3mdttKf4mDL5X3_MyNTGG1dFwg=w1000-rw"
          ],
        
    },

    {
        id: 16,
        image: [
            "https://lh3.googleusercontent.com/qMfy23uU_pTwDuXzjef_MytPbUEwJSaIMbvbvsQihAOf0OrPPwHpIaVuA44jfdxtC8v51h5dKi8mfupQ0AwwXfI0Y4qTtJBBFA=w1000-rw",
            "https://lh3.googleusercontent.com/eSwKSL_FH7kdArXJa_LNpPLUzbbO6qLj7tsDpfdHz6hgwGVMWi7tkVUuKmeHzOxjMOyLURtkkNeQ0tEjT9QGB-uqawocnyQ=w1000-rw",
            "https://lh3.googleusercontent.com/zrOiEEA4_ok2Ys-sdL9qPFzhhlFYeFj5m1jZtjNW4SiDEr694RtQjKwQyZMJdbE6MRL7Z5gf0lXP_rzGFgbL7Qo7x5PsqYU=w1000-rw",
            "https://lh3.googleusercontent.com/WV5Torp7yqFjWZsQ--fe9xsEMapSKMxcpJd5owC2aKJjDdUEf6iATexGnX9GfdoMri2zVwFVorY93AaO8Sdw1o8INX9ONwM=w1000-rw"
          ],
        name: 'MSI',
        description: 'Màn hình LCD MSI 32" OPTIX G32C4X (1920 x 1080/VA/250Hz)',
        price: '5.990.000 ',
        oldPrice: '6.850.000 ',
        discount: '-12.55%',
        
    },
    {
        id: 17,
        image: [
            "https://lh3.googleusercontent.com/cAqY2a1i6ZhNUpnTX7J8nOgq5IuKN0OQ6Ed0McHFX_CvL-mhX8-5NtVCDNBGGmpAuY4ZkZevqXUEx9pLkw=w1000-rw",
            "https://lh3.googleusercontent.com/p1kPi1Wn34sDkoNj169TsM5qg3NgO5CndT3ACa67leopnxPPznSxbsFADh2AHzD_FUKTCNcCRNqjgGAXusA=w1000-rw",
            "https://lh3.googleusercontent.com/GMBApCxFSgdBcA8jYDGYZif_8s5WZJUHkcYNbYrWev2W9GTdFzQ3I4avVQrS-JEO0sL78wCy6PBiFExyOxGX=w1000-rw",
            "https://lh3.googleusercontent.com/3GFA5mVqSQLhFfdqLpIP_2CNo3irdybP8TU9e5hqh3CbsCEgiIBaiwPc6U7efwc5241CcZEboZ5R8IXOZWE=w1000-rw",
            "https://lh3.googleusercontent.com/hd1ewNOv8qD30RMtbP43UKhEoiGZINEqb8whN055ITpEoToKdF-SXMk-B-lS46o8iFxUfkxC1WjofyXJhrA=w1000-rw",
            "https://lh3.googleusercontent.com/JCD_2Nsr2V0Rl5k_fCAkKER3Y_0e1pVdccPv_NCoBqqHBBJtOuMfLdNmDqL8oXOx8wUWJYLwQpMfy4uVCLA=w1000-rw"
          ],
        name: 'SAMSUNG',
        description: ['Màn hình LCD SAMSUNG 28" LU28R550UQEXXV (3840 x 2160/IPS/60Hz/4 ms/FreeSync)'],
        price: '5.350.000 ',
        oldPrice: '6.490.000 ',
        discount: '-17.57%',
        
    },
    {
        id: 18,
        image:[ 'https://lh3.googleusercontent.com/1w2SbWI_1BKK13W9HwpwhK4NAYCWNM5elvTYUkXq0W5jK_Ejjrz9qMj6sKknA-L5NdCWxLBsvmQBfDz8u7Xkq1Trg2Vp33fF=w230-rw'],
        name: 'SAMSUNG',
        description: 'Smart Tivi Samsung 4K UHD 55 inch UA55AU7700',
        price: '9.490.000 ',
        oldPrice: '11.900.000 ',
        discount: '-20.25%',
        
    },
    {
        id: 19,
        image: ['https://lh3.googleusercontent.com/LtjHBpdoMOKzuWkLD-usZVaMH4qNsBh7btiq6vpH3WEGi6fl98Bk2zh_xFeCgm1qQ0eyLt6L8teJqdsR4ne_JcSO08URGMwe=w230-rw'],
        name: 'TCL',
        description: 'Google Tivi TCL 4K 55 inch 55P745',
        price: '7.990.000 ',
        oldPrice: '12.990.000 ',
        discount: '-38.49%',
        
    },
    {
        id: 20,
        image: ['https://lh3.googleusercontent.com/r-DM3IMAo3nh4J1xlP3KvaRGDw8mVwR2BQoCwuiTYH2tJvfBndaFi9Dh1F4eTIV3tXN1Nzod8dhhEvJjoti_P-X6ZeQCtsWR=w230-rw'],
        name: 'COOCAA',
        description: 'Google Tivi Coocaa 70C9 4K 70 inch',
        price: '8.990.000 ',
        oldPrice: '24.900.000 ',
        discount: '-63.9%',
        
    },
    {
        id: 21,
        image:[ 'https://lh3.googleusercontent.com/uiLQNTEqazg6MB8Uv8stnPE0WP-GV86TD8JgOlFUaqMcsBr89rOZwsX3KklJ9nDWXLYutoCM-5xeRw7l-U_1jbVsGWl5aPvLgg=w230-rw'],
        name: 'ACER',
        description: 'Laptop Acer Nitro 5 Tiger AN515-58-52SP ',
        price: '21.490.000 ',
        oldPrice: '29.490.000 ',
        discount: '-27.13%',
        
    },
    {
        id: 22,
        image: ['https://lh3.googleusercontent.com/ITuM-86ObB_Q_pELdb6s3xjIvvECtOl2IxJJ9_4RUSaYmzOMEprg8EOQ-VKdFOeI3SFNL-fpnFL7KQggDoo84bXE2WIB_cDe=w230-rw'],
        name: 'ACER',
        description: 'Laptop ACER Aspire 7 A715-42G-R05G ',
        price: '14.990.000 ',
        oldPrice: '20.490.000 ',
        discount: '-26.84%',
        
    },
    {
        id: 23,
        image: ['https://lh3.googleusercontent.com/k2qUoMPILua-Lq8YKTkO5WkTdUmI8yk1btdgNDEDIkVXT_N-l2XtYXOTYb3Fd92LxkexynRA92yil2nWe6PRjCBKb5k7VvE=w230-rw'],
        name: 'ASUS',
        description: 'Laptop ASUS Vivobook 15 OLED A1505VA-L1114W',
        price: '17.990.000 ',
        oldPrice: '19.990.000 ',
        discount: '-10.01%',
        
    },
    {
        id: 24,
        image: ['https://lh3.googleusercontent.com/UleucPwM1Ht33PoUPD-5kmLohkc_E1xGvUApBkkyqrt-570vgu9jDaNEPjhNrxtBs6pKMEj0b2IcptoCCYqelbF0Ed6PLA7a=w230-rw'],
        name: 'ASUS',
        description: 'Laptop Asus Vivobook Go 15 E1504FA-NJ454W (AMD Ryzen 5-7520U) (Bạc)',
        price: '12.490.000 ',
        oldPrice: '14.490.000 ',
        discount: '-13.8%',
        
    },
    {
        id: 25,
        image:[ 'https://lh3.googleusercontent.com/OzQVKRXMUlErjxiwqtLwpWvOWUbmuLay-lL_o80bXTheu_tfX-j07L8fuGtCgddQTrvaF_hbjKwxMlU7IxMgE_6oTkrW06Gs=w230-rw'],
        name: 'ACER',
        description: 'Laptop Acer Nitro 16 Phoenix AN16-41-R5M4 (AMD Ryzen 5-7535HS)',
        price: '25.990.000 ',
        oldPrice: '29.990.000 ',
        discount: '-13.34%',
        
    },
    {
        id: 26,
        image: ['https://lh3.googleusercontent.com/XOB7KKuRnh0gt1gotzHS3ZHdHJxbXz0WB44G2NXy6vc1SwQzByQVbAPPSeGOP4NqlA_rLT5R_4zpn_BdvDtiWN0kQrpYJg0=w230-rw'],
        name: 'ASUS',
        description: 'Laptop Asus TUF Gaming F15 FX506HE-HN075W (i7-11800H) (Đen)',
        price: '22.990.000 ',
        
    },
    {
        id: 27,
        image: ['https://lh3.googleusercontent.com/wHTLEfLn144LYVUFD1w3igspoB81N70w-OXb5sJd2gcsBOor7ue35cDNKqdiB6zD7hJOGr2ksODAfd8a_9NCut_WMZj_2dw=w230-rw'],
        name: 'ACER',
        description: 'Laptop Acer Swift 3 SF314-512-56QN (NX.K0FSV.002) (i5-1240P)',
        price: '18.490.000 ',
        oldPrice: '24.790.000 ',
        discount: '-25.41%',
        
    },
    {
        id: 28,
        image:[ 'https://lh3.googleusercontent.com/ic9xCOgUqaYfESAutcCbpMwnXicl0pWFCp5t6KMhG3r6LV6i2ttqr31SWhVJl-yx-uHlrfKfslI9QvKKTJgNgN3R09oy-ZGj6A=w230-rw'],
        name: 'LENOVO',
        description: 'Laptop Lenovo IdeaPad Slim 5 14IAH8 - 83BF002NVN (i5-12450H) (Xám)',
        price: '15.490.000 ',
        oldPrice: '17.490.000 ',
        discount: '-11.44%',
        
    },
    {
        id: 29,
        image: ['https://lh3.googleusercontent.com/ZUHMHJWQWODSAYAd7kqStW95t8BByzybaESfKzMdRJvRXW98bxFVu4Z80_Z4OElND26y1LkTHGPtloc-hdAZIuIq2NgJGCEvgg=w230-rw'],
        name: 'ACER',
        description: 'Laptop Acer Aspire 3 A315-59-51X8 (NX.K6TSV.00F) (i5-1235U) (Bạc)',
        price: '12.990.000 ',
        oldPrice: '15.490.000 ',
        discount: '-16.14%',
        
    },
    {
        id: 30,
        image: ['https://lh3.googleusercontent.com/UVlLL22GAWZEgQywLdhNxX3pW5B_Dk1nfDVBuASjNy6QRus9j7OBzORCBQuhxDpqU64Yj2kG4_D8JpumTpFJlDbi8LP_CArxAg=w230-rw'],
        name: 'ACER',
        description: 'Laptop Acer Nitro 5 Tiger AN515-58-769J ',
        price: '21.990.000 ',
        oldPrice: '31.790.000 ',
        discount: '-30.83%',
        
    },
    {
        id: 31,
        image: ['https://lh3.googleusercontent.com/3-MtOXsp53dOffnYoV3xqaORWQvznvPMlZhvE6vZCI4sLj4tF9nXYjIlfg70OW377XKT9G-65__AN9BaDiUoZsSM8Mk3JA=w230-rw'],
        name: 'ACER',
        description: 'Laptop Acer Aspire 5 A515-58GM-59LJ (NX.KQ4SV.001) (i5-13420H) (Xám)',
        price: '16.990.000 ',
        oldPrice: '20.490.000 ',
        discount: '-17.08%',
        
    },
    {
        id: 32,
        image: ['https://lh3.googleusercontent.com/oICWyD_ej__HTJkdWpZT64UyNf3KBjl42ZZzywZmUPyM2pTdOwjJ--4-69M3mtcreef83flVgsuicjw1O5m9kLz2_NPpLQc=w230-rw'],
        name: 'APPLE',
        description: 'iPhone 15 128GB',
        price: '22.990.000 ',
        
    },
    {
        id: 33,
        image: ['https://lh3.googleusercontent.com/pOj-qIpNot1wY3kfKfzX_wjrGImtHDG31ZFBZ0GZnsILHxMrMyydS4oxD1-B8bqs3xcGmOSg4rQNDxWGHvtFFWPtI1ytXGM=w230-rw'],
        name: 'HALIO',
        description: 'Máy triệt lông lạnh cá nhân Halio IPL Cooling Hair Removal Device',
        price: '2.390.000 ',
        oldPrice: '4.000.000 ',
        discount: '-40.25%',
        
    },
    {
        id: 34,
        image: ['https://lh3.googleusercontent.com/zAj4JNxxBVFGL5u9CHswb6i_thagi_dgjgro0LS2fbJNMHcoo29b-DaFq03vSjXN8sNMGtkNalhyMlY5G3UTqpEwlimFz8zk=w230-rw'],
        name: 'SAMSUNG',
        description: 'Màn hình LCD Samsung 24 inch LS24C310EAEXXV (1920 x 1080/ IPS/ 75Hz/ 5 (GTG))',
        price: '2.290.000 ',
        oldPrice: '2.619.000 ',
        discount: '-12.56%',
        
    },
    {
        id: 35,
        image: ['https://lh3.googleusercontent.com/jLWIzrMHLHKfA1fFHoXi2a4epVYgj10GKodjjwKsQUCDY980FUm1EQ6gcwUZkPxZz2zP4FX8DeHBlSxPYn2Ms8GjmvWAJvkq=w230-rw'],
        name: 'LENOVO',
        description: 'Laptop Lenovo IdeaPad 3 15IAU7 - 82RK001QVN (i5-1235U) (Xanh)',
        price: '16.790.000 ',
        oldPrice: '17.990.000 ',
        discount: '-6.67%',
        
    }
];
sessionStorage.setItem('storageSP', JSON.stringify(products));
var sanpham5 = [];
sanpham5 = products;

loadSP5(sanpham5);
function loadSP5(arr) {
    for (let i = 0; i < arr.length; i++) {
        var giacu = (arr[i].oldPrice == undefined) ? " " : arr[i].oldPrice + "đ";
        var saleoff = (arr[i].discount == undefined) ? " " : arr[i].discount;
        document.getElementById("sanpham5").innerHTML +=
        `<div class="bg-white hover:bg-black w-1/6 group  hover:rounded-lg overflow-hidden text-left p-4 transition-all duration-200">
                    <img class="w-full rounded-lg" src="${arr[i].image[0]}"
                        alt="">
                     <div class="mt-1">
                        <a  class="group-hover:text-white font-medium text-gray-400 text-sm" href="home/chitiet" class="ten">${arr[i].name}</a>
                    </a> <br>
                        <small  class="text-gray-600 tracking-tight my-1 leading-tight h-12 overflow-hidden block" >
                            <small>
                            ${arr[i].description}
                            </small>
                        </small>
                        <h3 class="font-semibold group-hover:text-blue-300 text-blue-800 text-sm">${arr[i].price} <span class="underline">đ</span></h3>
                        <small style="font-size: 70%;" class="flex"><span
                                style="text-decoration: line-through;color: rgb(161, 161, 161);">${giacu}<span
                                    style="text-decoration: underline;">đ</span></span>&nbsp;
                                <p class="group-hover:text-blue-300 text-blue-800">- ${saleoff}</p>
                        </small>
                       
                    </div>
                    <a class="block  group-hover:rounded-3xl group-hover:text-blue-300 group-hover:border-blue-400 text-center py-1 text-sm border-blue-800 border my-3 text-blue-800 rounded"  href="login.html?id=${arr[i].id}">Thêm vào giỏ</a>

                </div>`
    }

}

function sapxepGiam() {
    let g = Array.from(sanpham5);
    console.log(sanpham5);
    for (let ia = 0; ia < g.length - 1; ia++) {
        for (let ib = ia + 1; ib < g.length; ib++) {
            let giaA = Number((g[ia].price).replace(/\./g, ""));
            let giaB = Number((g[ib].price).replace(/\./g, ""));
            if (giaA < giaB) {
                let temp = g[ia];
                g[ia] = g[ib];
                g[ib] = temp;
            }
        }
    }
    loadSP5(g);
}
function sapxepTang() {
    let t = Array.from(sanpham5);
    console.log(sanpham5);
    for (let ia = 0; ia < t.length - 1; ia++) {
        for (let ib = ia + 1; ib < t.length; ib++) {
            let giaA = Number((t[ia].price).replace(/\./g, ""));
            let giaB = Number((t[ib].price).replace(/\./g, ""));
            if (giaA > giaB) {
                let temp = t[ia];
                t[ia] = t[ib];
                t[ib] = temp;
            }
        }
    }
    loadSP5(t);
}
var sanphamName = [];
var checkR = false;
var nameccb = " ";
function loadName(y) {
    var cbbName = document.getElementById(y.getAttribute("id"));
    if (cbbName != nameccb) {
        checkR = false;
    }
    if (cbbName.checked && !checkR) {
        document.getElementById("sanpham5").innerHTML = null;
        sanphamName = [];
        for (let i = 0; i < sanpham5.length; i++) {
            if (sanpham5[i].name == y.getAttribute("id")) {
                sanphamName.push(sanpham5[i]);
            }
        }
        loadSP5(sanphamName);
        checkR = true;
        nameccb = cbbName;
    } else if (checkR) {
        cbbName.checked = false;
        document.getElementById("sanpham5").innerHTML = null;
        loadSP5(sanpham5);
        checkR = false;
    }
}

var cbbGia = document.getElementById("cbbGia");
cbbGia.onchange = test;

function test() {
    document.getElementById("ASUS").checked = false;
    document.getElementById("ACER").checked = false;
    document.getElementById("APPLE").checked = false;
    var IDcbb = document.getElementById("cbbGia").value;
    if (IDcbb == 2) {
        document.getElementById("sanpham5").innerHTML = null;
        sapxepGiam();
    } else if (IDcbb == 3) {
        document.getElementById("sanpham5").innerHTML = null;
        sapxepTang();
    } else {
        document.getElementById("sanpham5").innerHTML = null;
        loadSP5(sanpham5);
    }

}
