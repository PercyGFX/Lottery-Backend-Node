
# NodeJS Backend for Lottery App

![alt text](https://raw.githubusercontent.com/PercyGFX/Lottery-Backend-Node/main/images/login.png)

![alt text](https://raw.githubusercontent.com/PercyGFX/Lottery-Backend-Node/main/images/Homepage.png)

Backend for lottery app

https://lottery-anjmnijql-percygfx.vercel.app/


    
## API Reference

#### http://localhost:5000/login  POST

```bash
{
    
    "phone":"+94770000070",
    "token": "eyJhbGciOiJSUz"

}


```

#### http://localhost:5000/bookslots  POST

```bash
{
  "uuid": "ade3f6ca-d2d1-402e-a686-8a95155ac53e",
  "lotteryTypeId": "1",
  "data": [
    {
      "id": 71,
      "picked": true
    },
    {
      "id": 72,
      "picked": true
    },
    {
      "id": 74,
      "picked": true
    }
  ]
}



```



#### http://localhost:5000/getbookedlots GET

```bash
Example Preview

{
    "purchasedNo": [
        75,
        51
    ]
}



```

#### http://localhost:5000/myslots GET

```bash
Example Preview

{
    "success": true,
    "data": [
        71,
        72,
        74
    ],
    "date": "6/5/2023",
    "balance": 100,
    "uuid": "ade3f6ca-d2d1-402e-a686-8a95155ac53e"
}


```
