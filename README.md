# Game of Thrones Deadpool

## Website

```
https://gotdeadpool.herokuapp.com
```

## Run server

```
bundle
unicorn
```

## API

To make a request to the API for a specific Deadpool, pass in the `deadpool_id` to the `http://www.gameofthronesdeadpool.com/api/<deadpool_id>` endpoint for a JSON payload of the Deadpool, its players, and each player's characters.

### Request

```bash
curl http://www.gameofthronesdeadpool.com/api/<deadpool_id>
```

### Response

```bash
{
  "data": [
    {
      "player": {
        "id": 1,
        "deadpool_id": 1,
        "name": "Tyler"
      },
      "characters": [
        {
          "id": 1,
          "name": "Brianne of Tarth",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Brienne_of_Tarth",
          "is_alive": true
        },
        {
          "id": 2,
          "name": "Lord Beric",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Beric_Dondarrion",
          "is_alive": true
        },
        {
          "id": 3,
          "name": "Grand Maester Qyburn",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Qyburn",
          "is_alive": true
        },
        {
          "id": 4,
          "name": "Rhaegal",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Rhaegal",
          "is_alive": true
        },
        {
          "id": 5,
          "name": "Lyanna Mormont",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Lyanna_Mormont",
          "is_alive": true
        }
      ]
    },
    {
      "player": {
        "id": 2,
        "deadpool_id": 1,
        "name": "Jon"
      },
      "characters": [
        {
          "id": 6,
          "name": "Tormund Giantsbane",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Tormund",
          "is_alive": true
        },
        {
          "id": 7,
          "name": "Jamie Lannister",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Jaime_Lannister",
          "is_alive": true
        },
        {
          "id": 8,
          "name": "Unella",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Unella",
          "is_alive": true
        },
        {
          "id": 9,
          "name": "Podrick Payne",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Podrick_Payne",
          "is_alive": true
        },
        {
          "id": 10,
          "name": "Robett Glover",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Robett_Glover",
          "is_alive": true
        }
      ]
    },
    {
      "player": {
        "id": 3,
        "deadpool_id": 1,
        "name": "Mike Hayes"
      },
      "characters": [
        {
          "id": 11,
          "name": "Jorah Mormont",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Jorah_Mormont",
          "is_alive": true
        },
        {
          "id": 12,
          "name": "Gregor Clegane (The Mountain)",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Gregor_Clegane",
          "is_alive": true
        },
        {
          "id": 13,
          "name": "Robin Arryn",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Robin_Arryn",
          "is_alive": true
        },
        {
          "id": 14,
          "name": "Eddison Tollett",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Eddison_Tollett",
          "is_alive": true
        },
        {
          "id": 15,
          "name": "Ilyn Payne",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Ilyn_Payne",
          "is_alive": true
        }
      ]
    },
    {
      "player": {
        "id": 4,
        "deadpool_id": 1,
        "name": "Ant"
      },
      "characters": [
        {
          "id": 16,
          "name": "Cersei Lannister",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Cersei_Lannister",
          "is_alive": true
        },
        {
          "id": 17,
          "name": "Euron Greyjoy",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Euron_Greyjoy",
          "is_alive": true
        },
        {
          "id": 18,
          "name": "Ellaria Sand",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Ellaria_Sand",
          "is_alive": true
        },
        {
          "id": 19,
          "name": "Yara Greyjoy",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Yara_Greyjoy",
          "is_alive": true
        },
        {
          "id": 20,
          "name": "Missandei",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Missandei",
          "is_alive": true
        }
      ]
    },
    {
      "player": {
        "id": 5,
        "deadpool_id": 1,
        "name": "Pete"
      },
      "characters": [
        {
          "id": 21,
          "name": "Grey Worm",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Grey_Worm",
          "is_alive": true
        },
        {
          "id": 22,
          "name": "Petyr Baelish (Littlefinger)",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Petyr_Baelish",
          "is_alive": true
        },
        {
          "id": 23,
          "name": "Melisandre",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Melisandre",
          "is_alive": true
        },
        {
          "id": 24,
          "name": "Theon Greyjoy",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Theon_Greyjoy",
          "is_alive": true
        },
        {
          "id": 25,
          "name": "Night King",
          "url": "https:\/\/gameofthrones.wikia.com\/wiki\/Night_King",
          "is_alive": true
        }
      ]
    }
  ]
}
```
