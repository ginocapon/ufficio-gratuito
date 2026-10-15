# Ufficio gratuito (Word / Excel compatibili)

Questo progetto raccoglie **modi legali** per usare documenti, fogli e presentazioni **senza pagare Microsoft 365**, usando software open source o tier gratuiti ufficiali.

> **Attenzione:** su GitHub circolano anche repo che promettono “Office crackato”, KMS, attivatori, ecc. Sono **illegali**, spesso **malware**, e **non vanno usati**. Qui sotto c’è solo roba legittima.

---

## Opzione 1 — La più semplice (consigliata su Windows)

Installa sul PC, niente Docker:

| Cosa | Link | Note |
|------|------|------|
| **ONLYOFFICE Desktop** (Word/Excel/PPT .docx .xlsx .pptx) | https://www.onlyoffice.com/it/download-desktop.aspx | Gratis, interfaccia simile a Office |
| **LibreOffice** | https://it.libreoffice.org/scarica-libreoffice/ | Gratis, molto diffuso in Italia |
| **Microsoft 365 sul web** (limitato, account Microsoft) | https://www.office.com | Word/Excel online gratis nel browser |

---

## Opzione 2 — Server locale con Docker (Word/Excel nel browser)

Richiede [Docker Desktop](https://www.docker.com/products/docker-desktop/) su Windows.

### ONLYOFFICE Document Server (Community, gratis)

- Repo: https://github.com/ONLYOFFICE/DocumentServer  
- Immagine Docker: https://github.com/ONLYOFFICE/Docker-DocumentServer  
- Guida installazione: https://helpcenter.onlyoffice.com/docs/installation/docs-community-install-docker.aspx  

**Limitazione:** il container da solo è il “motore” degli editor. Per aprire file come in un ufficio completo conviene anche **ONLYOFFICE Desktop** (opzione 1) oppure integrare Nextcloud / ONLYOFFICE DocSpace.

Da questa cartella:

```powershell
cd c:\Users\Utente\progetti\ufficio-gratuito
docker compose up -d
```

Poi apri: http://localhost:8080 (pagina di test / integrazione ONLYOFFICE).

### Casual Sheets — Excel-like self-hosted (open source)

- Repo: https://github.com/CasualOffice/sheets  
- Foglio di calcolo in browser, import/export `.xlsx`, collaborazione  

Segui il README del repo per `docker compose` (progetto separato, aggiornato dalla community).

---

## Opzione 3 — Sviluppatori / embed nel web (GitHub)

| Progetto | Link | Cosa fa |
|----------|------|---------|
| **Univer** (fogli + docs, SDK) | https://github.com/dream-num/univer | Motore tipo Excel/Word da integrare in app web |
| **Univer start kit** | https://github.com/dream-num/univer-sheet-start-kit | Esempio minimo per provare i fogli |
| **LibreOffice (codice sorgente)** | https://github.com/LibreOffice/core | Suite desktop completa (non è un “trucco” per Office) |

---

## Opzione 4 — Se sei studente o dev

- **GitHub Student Developer Pack:** https://education.github.com/pack  
  A volte include benefit partner (controlla se c’è ancora offerta Microsoft per studenti — cambia nel tempo).

---

## File in questa cartella

| File | Uso |
|------|-----|
| `docker-compose.yml` | Avvia ONLYOFFICE Community in locale sulla porta **8080** |
| `avvia-ufficio.ps1` | Script rapido `docker compose up -d` |
| `ferma-ufficio.ps1` | Ferma i container |

---

## Primo utilizzo consigliato

1. Installa **ONLYOFFICE Desktop** (link sopra) e apri i tuoi `.docx` / `.xlsx`.  
2. Se vuoi sperimentare in rete locale, installa Docker Desktop e lancia `.\avvia-ufficio.ps1`.  
3. Ignora qualsiasi repo GitHub che parla di “attivazione permanente” o “Office 365 gratis crack”.

---

*Progetto personale — non fa parte del repository Righetto Immobiliare.*
