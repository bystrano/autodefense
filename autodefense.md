# petit manuel d'autodéfense en ligne

## Les bases

Pour commencer il faut bien comprendre quelques bases du fonctionnement du net.
On ne peux jamais avoir une sécurité totale dès qu'on utilise un ordinateur, et tous les outils qu'on peux utiliser sont limités.
Il faut donc comprendre un minimum comment ça marche pour savoir contre quoi on se protège (ou pas).

Pour qu'un site ou autre programme fonctionne sur le net, il y a
toujours 3 personnes en jeu : **le client** (ton ordi ou téléphone,
tablette…), **l'infrastructure** (les "tuyaux" dans lesquels circulent
les infos) et **le serveur** (l'ordi du site auquel tu te connectes,
géré par le site).

Pour se protéger sur le net il faut à chaque fois penser à ces 3 niveaux.
Il peux y avoir différents types de problèmes suivant le niveau auquel on se place, et ça implique à chaque fois des choses différentes.

### Attaque au niveau du client

C'est l'endroit le plus délicat, puisqu'à ce niveau on sait tout ce
que tu fais.
Un méchant peux facilement installer sur ton ordi un programme qui enregistre tout.
Chaque touche de clavier et chaque clic est enregistré, et les méchants peuvent même voir ce qui se passe sur ton écran, allumer ta webcam ou ton micro sans que tu ne t'en rendes compte.

Si ça arrive, ton ordi est surveillé en permanence, et tout ce que tu peux faire d'autre pour la sécurité ne servira à rien.
Du coup il faut éviter ça à tout prix.

Le plus important est de ne pas faire de choses compromettantes sur un ordi que tu ne contrôles pas.
Si tu vas au cybercafé, il faut partir du principe que les ordis sur place sont sous contrôle des méchants.
Il faut donc plutôt utiliser un ordi à toi.
Et si ton ordi passe entre les mains des méchants (fouille, visite à la maison en ton absence…), il faut aussi partir du principe qu'ils ont installé une porte dérobée dessus, parce que c'est vraiment le genre de trucs qu'ils font.

Une façon plus efficace de se protéger est d'utiliser *Tails*, j'en parlerai plus plus tard.

### Attaque côté infrastructures

Les gens qui contrôlent les tuyaux peuvent écouter les informations qui passent, et donc à priori voir sur quels sites tu vas, les messages que tu postes etc.

Plus vicieux, il peuvent te faire croire que tu te connectes à un site alors que tu te connecte en fait à un ordi à eux.
Genre remplacer la page de login de facebook par une version maison qui intercepte ton mot de passe.
Ça semble tordu mais c'était un des trucs de Ben Ali en Tunisie, ils récupéraient le mot de passe facebook des gens avec cette astuce, puis s'en servaient pour les surveiller.

La France a vendu des systèmes qui permettent de faire ce genre de coups fourrés à l'échelle de tout un pays un peu partout dans le Maghreb…
Donc c'est une vrai menace.

Pour éviter ce genre d'attaque, il faut utiliser *Tor*.

### Attaque côté serveur

Tu ne peux pas faire grand-chose côté serveur, comme il s'agit d'ordinateurs gérés par d'autres personnes.
Il faut être conscient qu'on ne peux à priori pas leur faire confiance, et que les serveurs savent à peu près tout ce que tu fais quand tu te connectes chez eux.

Les facebook, google et autres enregistrent tout ce que tu fais chez eux et sont tenu par la loi américaine de donner ces infos aux espions américains.
À priori ils ne donnent pas toutes les infos aux autres pays, mais bon ça ne veux pas dire que ça n'arrive pas.

Il faut garder en tête que par ce biais là, aucune chose de ce que tu fais sur le net ne peut être vraiment cachée (à moins d'être un nerd de la cryptographie…).
Tout le jeu sera de faire en sorte que les traces que tu laisses ne peuvent pas remonter jusqu'à toi.

## Tor

*Tor* est un logiciel qu'il faut installer sur ton ordi.
Son fonctionnement est assez complexe, mais en gros ça permet deux choses :

- **Crypter les connexions que tu fais avec le net.**
  Ça veut dire que les gens qui contrôlent les tuyaux ne peuvent pas voir ce que tu fais.
  Ils voient juste que tu fais quelque chose, mais ne savent pas sur quel site tu vas, à qui tu écris ou ce que tu écris.
- **Anonymiser ta connexion du point de vue du serveur.**
  Ça veut dire que le serveur ne sait pas qui tu es ni d'où tu te connectes.
  Il sait juste que tu utilise *Tor* pour te connecter à son site.
  Par contre ça ne l'empêche pas de voir ce que tu fais sur son site.

Configurer *Tor* correctement est un peu compliqué mais heureusement on peut télécharger une version de firefox pré-configurée avec *Tor*, et qui de façon générale te protège de toute une série de crasses.
Il suffit de télécharger le *Tor browser* sur [le site de Tor](https://www.torproject.org/download/download-easy.html.en), et l'installer sur ton ordi.
Ensuite il faut ensuite utiliser ce navigateur pour aller sur le net.
Toutes les connexions que tu fais avec ce navigateur passeront automatiquement à travers le réseau *Tor*, et seront donc cryptées et anonymisées.
Ça rend aussi tous les sites plus lents, mais c'est le prix à payer…

Par contre, ça ne protège *pas* les connexions que tu pourrais faire avec un autre programme.
Le mieux est de n'avoir que ce programme ouvert quand tu veux être anonyme, et de ne pas ouvrir d'autres documents genre doc, pdf ou autre.

### contourner la censure

Le premier avantage d'utiliser *Tor* est que les gens qui contrôlent les tuyaux ne peuvent plus contrôler grand chose.
Comme ils ne voient pas ce que tu fais, ils ne peuvent plus décider de te cacher telle ou telle chose.
Ça rend les systèmes de censure par filtrage inutiles, les opposants chinois par exemple s'en servent tous les jours pour voir des sites interdits.

### adresses email anonymes

Quand tu crées un compte email ou autre sur un site, même si tu n'as pas donné d'infos personnelles, le serveur voit depuis quel endroit tu te connectes.
Il possible de retrouver à quel réseau wifi précis tu es connecté.
On peut donc assez facilement remonter jusqu'à toi.

*Tor* permet de se protéger contre ça, et tu peux alors te créer une adresse email, ou n'importe quel compte en ligne qui ne sera pas lié à toi.
Il faut juste créer son compte en utilisant le navigateur de *Tor*, et ne jamais s'y connecter autrement.
Pour que ça marche il faut faire très attention.
Il suffit de te connecter *une seule fois* sans passer par *Tor* pour établir un lien avec toi, et du coup griller complètement le compte.

Ce système règle le problème du côté technique, mais ça reste difficile de ne pas se faire griller par des moyens détournés.
Il ne faut pas oublier que même si l'adresse est anonyme, les méchants pourraient peut-être avoir accès aux contenus des messages.
Il ne faut donc rien écrire qui permette d'établir un lien avec toi.

Il faut aussi penser au fait que les gens avec qui tu échangera des messages depuis cette boîte n'utilisent pas forcément le même système, et ne sont donc pas anonymes, ce qui peux permettre de faire le lien avec toi aussi.
L'idéal serait de n'utiliser ce genre de boîte mail qu'avec des gens qui utilisent aussi *Tor*.

## Tails

*Tails* est un système d'exploitation, il s'utilise comme remplacement temporaire pour windows ou mac osx.
Concrètement, c'est une clé USB que tu peux brancher dans n'importe ordi.
Il faut ensuite redémarrer l'ordi en mode *Tails*.
Tu as alors un système qui ressemble à windows, mais qui en fait est autre chose, un système très sécurisé.
Les principaux avantages sont :

- Le système utilise *Tor* pour *toutes* les connexions qui tu fais avec l'ordi, il n'est donc pas possible de dévoiler ton identité par erreur.
- Le système n'enregistre rien et ne laisse aucune trace.
  Quand tu éteins l'ordinateur et que tu retire la clé USB, l'ordi est exactement comme tu l'as trouvé, pas de traces de ton passage.
  Quand tu réutiliseras la clé pour mettre un ordi en mode *Tails*, il n'y aura aucune trace de ce que tu as fais la dernière fois, à part les fichiers que tu as explicitement sauvé.

C'est un peu déroutant, et pas très pratique sous certains aspects, mais ça permet d'utiliser un ordi pas sûr sans souci.
Tu peux aussi utiliser ça sur ton ordi, pour faire certaines choses sans laisser de traces.

Tu peux te faire une clé USB *Tails* avec n'importe quelle clé, ou une carte SD.
Il y a des instructions sur [le site de Tails](https://tails.boum.org/download/index.fr.html).

## Téléphone

Tous les téléphones portables permettent aux autorités de localiser la position à quelques mètres près, et d'écouter ce qui se dit.
Comme pour les emails, c'est très difficile, voire impossible de ne laisser aucune trace, mais on peut essayer de se faire pister anonymement.
Il faut commencer par trouver une carte SIM qui n'est pas liée à ton identité (genre carte prépayée, si le vendeur ne t'enregistres pas…).

Le téléphone que tu as avec toi tous les jours devrait rester chez toi allumé quand tu ne veux pas être pisté.
Il ne suffit pas de juste changer de carte SIM quand tu veux être anonyme, parce qu'on peux alors faire le lien entre les deux no, en remarquant qu'ils ne sont jamais allumés en même temps.
Le mieux est d'avoir un deuxième téléphone qui est toujours éteint quand tu es chez toi (en retirant la batterie), et que tu n'utilises que quand tu es à un endroit où tu ne veux pas être pisté (et donc que ton autre téléphone est à la maison).

Un autre problème avec les téléphones est qu'on peux allumer le micro à distance pour écouter ce qui se dit.
Le plus simple pour éviter ça est de mettre les téléphones au congélateur ou au frigo quand tu veux avoir une conversation en privé.
Les ondes passent mal, et on n'entend de toute façon pas ce qui se dit depuis l'intérieur.

Et pour la confidentialité des conversations, il n'y a rien à faire, on peut les écouter de toutes façon…

## En résumé…

En résumé, c'est assez compliqué de ne pas être pisté quand on se sert des nouvelles technologies.
Ça demande pas mal de discipline et un esprit un peu parano.

Chaque service laisse des traces qui peuvent ensuite être analysées et recoupées à d'autres par les méchants.
Tu as de toute façon déjà plein d'infos sur toi dans tous ces systèmes, à partir du moment où tu utilises un téléphone ou internet.

Mais au final les choses ne sont pas si sombres, *Tor* fonctionne bien.
Ce système existe depuis plusieurs années, il est utilisé par plein de militants à travers le monde, mais aussi par toutes sortes de trafiquants, sans que les gens ne se fassent attraper.
Enfin ceux qui se font attraper se font avoir par des moyens détournés…
Du coup il faut bien faire attention à ce que les "identités anonymes" que tu te crées avec *Tor* soient complètement détachées du reste.

Les méchants essaient de trouver un maximum d'infos sur qui a des contacts avec qui.
Ils se servent de ces infos pour reconnaître les réseaux de gens et identifier ceux qui les dérangent.
Du coup il faut essayer de n'avoir des contacts entre "dérangeurs" qu'à travers des identités anonymes.
Le but du jeu est d'éviter qu'on s'intéresse à toi à la base, puisqu'une fois que tu es dans le collimateur ça devient bien plus compliqué.
