
# NodeJS Backend for Lottery App

An AI chatbot API + Fronend with Tensorflow + flask




## Installation

Install my-project with npm

```bash
  npm install my-project
  cd my-project
```
    
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