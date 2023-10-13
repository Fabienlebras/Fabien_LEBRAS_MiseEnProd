
## Prérequis

- [Docker](https://www.docker.com/) doit être installé sur votre système.

## Instructions

1. Ouvrir un terminal.

2. Se placer dans le répertoire du projet récupéré sur github :

   ```shell
   cd /chemin/vers/votre/projet

3. Pour construire l'image Docker de votre application, exécutez la commande suivante
   docker build .
4. Pour lancer votre application dans un conteneur Docker, utilisez la commande
   docker-compose up -d

5. Pour vérifier que votre conteneur est en cours d'exécution, exécutez la commande suivante :
  docker ps
    Vous verrez une liste de conteneurs Docker en cours d'exécution. Notez le "CONTAINER ID" de l'application que vous venez de lancer.

6. Pour accéder à une session interactive dans le conteneur, utilisez la commande docker exec -it en remplaçant Container_ID par l'ID du conteneur que vous avez noté précédemment :
   docker exec -it Container_ID bash
7. Une fois dans le conteneur, vous pouvez exécuter le fichier server.php :
    php server.php

8. Ensuite ouvrez un nouveau terminal et relancer la commande :
      docker exec -it Container_ID bash
9. Executer le fichier Client.php :
   php client.php
10. Vous pouvez verifier que les vidéos se sont bien téléchargées à l'aide de la commande :
    ls





