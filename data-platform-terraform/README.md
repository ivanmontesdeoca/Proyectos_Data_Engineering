# Data Platform Terraform

Proyecto de infraestructura como código (IaC) desarrollado con Terraform para una futura plataforma de ingeniería de datos sobre AWS.

## Objetivo

Definir una estructura inicial, escalable y mantenible, preparada para incorporar servicios como Amazon Kinesis, Apache Flink y Amazon S3.

En esta primera etapa no se despliegan recursos reales.

## Requisitos

- Terraform 1.1 o superior
- Git
- Visual Studio Code (recomendado)

## Inicialización

Desde la terminal, dentro de la carpeta del proyecto:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
```

Para esta configuración sin recursos, no se necesitan credenciales de AWS. En etapas futuras serán necesarias para administrar infraestructura real.

## Estructura

- `provider.tf`: versiones y configuración del proveedor AWS.
- `main.tf`: definición de los recursos de infraestructura.
- `variables.tf`: declaración y validación de parámetros.
- `outputs.tf`: valores de salida.
- `terraform.tfvars`: valores de configuración del entorno.
- `.gitignore`: exclusión de archivos temporales y sensibles.

## Convención de nombres

Los recursos seguirán la convención:

`project_name-environment-resource`

Por ejemplo: `data-platform-dev-stream`.

Esta convención permite identificar el proyecto, el entorno y la función de cada recurso. Se adaptará a las restricciones de nombres de cada servicio AWS.

## Decisiones de diseño

Se separan los archivos por responsabilidad para facilitar la lectura, el mantenimiento, la reutilización y el trabajo colaborativo.

Terraform interpreta todos los archivos `.tf` de un mismo directorio como una única configuración, por lo que esta separación es organizativa y no funcional.

## Próximos pasos

Incorporar módulos reutilizables, recursos AWS y una estrategia de almacenamiento remoto y protección del estado de Terraform.