# k8sappswd

Progetto Python con Docker.

---

## 🚀 Avvio rapido

1. **Costruisci l'immagine Docker:**
   ```sh
   docker build -t k8sappswd .
   ```

2. **Avvia il container:**
   ```sh
   docker run -p 5000:5000 k8sappswd
   ```

---

## ☸️ Deploy su Kubernetes

Questa sezione guida al deploy dell'applicazione su un cluster Kubernetes.

### 1. Crea le risorse

Applica i manifest YAML per Pod, Deployment e Service:

```sh
kubectl apply -f pod.yaml         # Crea un Pod standalone
kubectl apply -f deployment.yaml  # Crea un Deployment gestito
kubectl apply -f service.yaml     # Espone l'app come Service
```

> **Suggerimento:** Puoi vedere l'output simulato (dry-run) prima di applicare:
> ```sh
> kubectl apply -f <file>.yaml --dry-run=client -o yaml
> ```

### 2. Verifica lo stato delle risorse

Controlla che tutto sia attivo:

```sh
kubectl get pods
kubectl get deployments
kubectl get services
```

### 3. Test locale tramite port-forward (opzionale)

Se vuoi accedere all'app dal tuo PC:

```sh
kubectl port-forward svc/demo-app-k8sappswd-service 5000:5000
```

Ora puoi visitare [http://localhost:5000](http://localhost:5000) nel browser.

### 4. Aggiornamento e gestione

- Per aggiornare l'app, modifica i file YAML e ri-applica con `kubectl apply`.
- Per rimuovere le risorse:
  ```sh
  kubectl delete -f pod.yaml
  kubectl delete -f deployment.yaml
  kubectl delete -f service.yaml
  ```

---

## 📁 Struttura del progetto

- `backend.py` — File principale Python
- `requirements.txt` — Dipendenze Python
- `Dockerfile` — Configurazione Docker

---

## 🤝 Contribuire

1. Fai un **fork** del repository.
2. Crea un **branch** per la tua modifica.
3. Fai una **pull request**.

---
