# 🏗️ EXPRESS ARTISAN - Propulseur de Visibilité Artisanale

> **"Votre site pro en 24h pour 10€/mois. Simple. Rapide. Radical."**

Express Artisan est une agence digitale spécialisée pour les acteurs du bâtiment. Nous proposons une solution de présence web ultra-performante à un prix défiant toute concurrence, combinée à une stratégie de SEO local agressive.

---

## 🚀 La Proposition de Valeur

### 💎 Le pack "PRÉSENCE" (10€ / mois)
- **UltraSpeed Website** : Plateforme Astro + Hébergement Netlify pour un chargement instantané.
- **Zéro Engagement** : L'artisan reste libre.
- **Conformité Totale** : RGPD vérifié, Mentions légales incluses, SSL activé.
- **Conversion Directe** : Aucun formulaire complexe. Tout se passe sur WhatsApp pour une réactivité maximale.

### 🔥 Le pack "LANCEMENT LOCAL GMB" (300€ unique)
- **SEO Local** : Création et optimisation de la fiche Google My Business (GMB).
- **Le Duo Gagnant** : Liaison site web + fiche Google pour doubler la visibilité.
- **Print & Digital** : **100 Cartes de visite offertes** avec QR Code personnalisé vers le site.
- **Récolte Avis** : Système pour booster les avis clients positifs.

---

## 🛠️ Structure Technique (Astro)

Le projet utilise **Astro** pour des performances SEO optimales (zéro JS inutile).

- `src/components/` : Blocs modulaires (Hero, Pricing, Strategy, Evidence...).
- `src/pages/index.astro` : Site vitrine principal.
- `src/pages/offres-sms.astro` : Landing page mobile dédiée au démarchage SMS (avec tracking).
- `src/styles/global.css` : Design system premium (Glassmorphism, Indigo/Emerald scheme).

---

## 📱 Stratégie de Démarchage SMS

Une page dédiée est disponible pour convertir les prospects contactés par SMS :
**URL :** `your-domain.pro/offres-sms?s=PROSPECT_NAME`

**Tracking inclus :** Le script identifie dynamiquement la source du clic (via le paramètre `s=`) et enregistre les clics sur le bouton WhatsApp dans le stockage local pour tes statistiques.

---

## ⚙️ Workflow de Publication

### 1. Déploiement
Le projet est lié au dépôt GitHub : `8888vtc-ui/expressartisan.pro`.
Chaque `push` sur la branche `main` déclenche un build automatique sur Netlify.

### 2. Création de site client
Utilise le script PowerShell pour générer un template client en 10 secondes :
`./scripts/create_client.ps1 -clientName "Jean Martin" -job "Plombier" -city "Nice"`

---

## ⚖️ Informations Légales du Site
Le site affiche les mentions légales de l'entreprise :
- **Entité** : David CHEMLA (SAS)
- **SIREN** : 912 244 696
- **Siège** : Villeneuve-Loubet (06270)
- **Contact WhatsApp** : 06 16 55 28 11

---

## 📦 Commandes Utiles
- `npm run dev` : Lancer en local.
- `npm run build` : Préparer la production.
- `git push origin main` : Mettre à jour le site live.

---
*Conçu avec expertise par David Chemla - Express Artisan © 2026*
