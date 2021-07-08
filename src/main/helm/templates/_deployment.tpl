{{- define "deployment" }}
apiVersion: apps/v1
kind: Deployment
metadata:
  creationTimestamp: null
  labels:
    app: testing123-asdfase
    backstage.io/kubernetes-id: testing123-asdfase
    slot: {{ .slot }}
  name: testing123-asdfase-{{ .slot }}
spec:
  replicas: 1
  selector:
    matchLabels:
      app: testing123-asdfase
  strategy: {}
  template:
    metadata:
      creationTimestamp: null
      labels:
        app: testing123-asdfase
        backstage.io/kubernetes-id: testing123-asdfase
        slot: {{ .slot }}
    spec:
      containers:
      - image: {{ .Values.config.image.name }}:{{ .Values.config.image.tag }}
        imagePullPolicy: IfNotPresent
        name: testing123-asdfase
        resources: {}
        ports:
          - containerPort: 8080 
        readinessProbe:
          httpGet:
            path: /actuator/health
            port: 8080
          periodSeconds: 5
status: {}
{{- end }}
