## Utilisation de Rerun à la place de Shotgun

Dans ce projet, j'utilise `rerun` à la place de `shotgun` pour le rechargement automatique d'application Sinatra en mode développement. Cela est dû à des problèmes potentiels qui peuvent survenir lors de l'utilisation de `shotgun` avec la version 1.3 de Rack. `shotgun` peut ne pas fonctionner correctement avec cette version de Rack, ce qui peut entraîner des comportements indésirables et des erreurs.

Je vous recommande d'utiliser `rerun`, car il fournit un mécanisme fiable de rechargement automatique de l'application et permet d'éviter les problèmes mentionnés avec `shotgun`. Pour exécuter votre application avec `rerun`, vous pouvez utiliser la commande suivante :

```bash
rerun -- rackup --port 4567 config.ru
```

## Why I Use Rerun Instead of Shotgun
In my development projects, I've found `rerun` to be a better choice compared to `shotgun` for automatically reloading my Sinatra application. This choice stems from an issue I encountered while using `shotgun` with Rack version 1.3. With this combination, `shotgun` didn't always work as expected, resulting in unexpected behaviors and errors.

To ensure smooth development, I recommend using `rerun` because it provides a dependable way to automatically reload the application without the issues associated with `shotgun`. To run your Sinatra application with `rerun`, simply use the following command:

```bash
rerun -- rackup --port 4567 config.ru
```