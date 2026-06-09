# API Ping en TypeScript

Ce projet est une API minimaliste en TypeScript utilisant Express. Elle retourne les headers de la requête lorsqu'une requête HTTP GET est effectuée sur `/ping`.

## Prérequis

- Node.js (version 16+ recommandée)
- npm ou yarn

## Installation

Clonez le dépôt et installez les dépendances :

```sh
npm install
```

## Lancement du serveur

Vous pouvez configurer le port via la variable d'environnement `PING_LISTEN_PORT`.

### Démarrer en mode développement :
```sh
npm run dev
```

### Démarrer en mode production :
```sh
npm run build
npm start
```

## Test de l'API

Exécutez la commande suivante pour tester l'API :

```sh
curl -X GET http://localhost:8080/ping
```

## Comportement attendu

- `GET /ping` → Retourne les headers de la requête en JSON.
- Toute autre requête → Retourne une réponse vide avec un code 404.

## Code source

```typescript
import express from 'express';

const app = express();
const port = process.env.PING_LISTEN_PORT || 8080;

app.get('/ping', (req, res) => {
    res.json(req.headers);
});

app.use((req, res) => {
    res.status(404).send();
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
```