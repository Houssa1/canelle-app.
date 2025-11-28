Hi, I'm trying to fix my Fly.io deployment. There's a build error on my Dockerfile.

Please fix my Dockerfile for me to the best of your ability. And give me the updated version so I can paste in Fly.io web deployment UI.

Error logs:

```
flyctl deploy --build-only --push -a canelleapp --image-label deployment-0bdafeb8adc1d699b506475ca5d7ac92 
==> Verifying app config
--> Verified app config
Validating /usr/src/app/fly.toml
[32m✓[0m Configuration is valid
==> Building image
Waiting for depot builder...

==> Building image with Depot
--> build:  (​)
#1 [internal] load build definition from Dockerfile
#1 transferring dockerfile: 1.12kB 0.0s done
#1 DONE 0.0s

#2 [internal] load metadata for docker.io/library/node:18
#2 DONE 0.7s

#3 [internal] load .dockerignore
#3 transferring context: 422B done
#3 DONE 0.0s

#4 [internal] load build context
#4 transferring context: 9.87kB done
#4 DONE 0.0s

#5 [build 1/5] FROM docker.io/library/node:18@sha256:c6ae79e38498325db67193d391e6ec1d224d96c693a8a4d943498556716d3783
#5 resolve docker.io/library/node:18@sha256:c6ae79e38498325db67193d391e6ec1d224d96c693a8a4d943498556716d3783 done
#5 DONE 0.0s

#5 [build 1/5] FROM docker.io/library/node:18@sha256:c6ae79e38498325db67193d391e6ec1d224d96c693a8a4d943498556716d3783
#5 sha256:461077a72fb7fe40d34a37d6a1958c4d16772d0dd77f572ec50a1fdc41a3754d 446B / 446B 0.0s done
#5 sha256:3697be50c98b9d071df4637e1d3491d00e7b9f3a732768c876d82309b3c5a145 1.25MB / 1.25MB 0.0s done
#5 sha256:cda7f44f2bddcc4bb7514474024b3f3705de00ddb6355a33be5ac7808e5b7125 3.32kB / 3.32kB 0.1s done
#5 sha256:c6b30c3f16966552af10ac00521f60355b1fcfd46ac1c20b1038587e28583ce7 20.97MB / 45.68MB 0.3s
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 1.05MB / 211.36MB 0.2s
#5 sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0 3.15MB / 64.40MB 0.2s
#5 sha256:37927ed901b1b2608b72796c6881bf645480268eca4ac9a37b9219e050bb4d84 1.05MB / 24.02MB 0.2s
#5 sha256:3e6b9d1a95114e19f12262a4e8a59ad1d1a10ca7b82108adcf0605a200294964 0B / 48.49MB 0.2s
#5 sha256:c6b30c3f16966552af10ac00521f60355b1fcfd46ac1c20b1038587e28583ce7 37.68MB / 45.68MB 0.5s
#5 sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0 10.49MB / 64.40MB 0.3s
#5 sha256:37927ed901b1b2608b72796c6881bf645480268eca4ac9a37b9219e050bb4d84 7.34MB / 24.02MB 0.3s
#5 sha256:3e6b9d1a95114e19f12262a4e8a59ad1d1a10ca7b82108adcf0605a200294964 6.29MB / 48.49MB 0.3s
#5 sha256:c6b30c3f16966552af10ac00521f60355b1fcfd46ac1c20b1038587e28583ce7 45.68MB / 45.68MB 0.6s done
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 13.68MB / 211.36MB 0.5s
#5 sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0 17.83MB / 64.40MB 0.5s
#5 sha256:37927ed901b1b2608b72796c6881bf645480268eca4ac9a37b9219e050bb4d84 14.68MB / 24.02MB 0.5s
#5 sha256:3e6b9d1a95114e19f12262a4e8a59ad1d1a10ca7b82108adcf0605a200294964 13.63MB / 48.49MB 0.5s
#5 sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0 25.17MB / 64.40MB 0.6s
#5 sha256:37927ed901b1b2608b72796c6881bf645480268eca4ac9a37b9219e050bb4d84 24.02MB / 24.02MB 0.7s done
#5 sha256:3e6b9d1a95114e19f12262a4e8a59ad1d1a10ca7b82108adcf0605a200294964 20.78MB / 48.49MB 0.6s
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 39.21MB / 211.36MB 0.9s
#5 sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0 33.55MB / 64.40MB 0.8s
#5 sha256:3e6b9d1a95114e19f12262a4e8a59ad1d1a10ca7b82108adcf0605a200294964 29.36MB / 48.49MB 0.8s
#5 sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0 42.99MB / 64.40MB 0.9s
#5 sha256:3e6b9d1a95114e19f12262a4e8a59ad1d1a10ca7b82108adcf0605a200294964 38.80MB / 48.49MB 0.9s
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 65.01MB / 211.36MB 1.2s
#5 sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0 52.43MB / 64.40MB 1.1s
#5 sha256:3e6b9d1a95114e19f12262a4e8a59ad1d1a10ca7b82108adcf0605a200294964 48.49MB / 48.49MB 1.1s
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 84.93MB / 211.36MB 1.4s
#5 sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0 64.40MB / 64.40MB 1.2s
#5 sha256:3e6b9d1a95114e19f12262a4e8a59ad1d1a10ca7b82108adcf0605a200294964 48.49MB / 48.49MB 1.2s done
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 103.81MB / 211.36MB 1.5s
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 142.61MB / 211.36MB 1.8s
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 161.48MB / 211.36MB 1.9s
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 178.26MB / 211.36MB 2.1s
#5 sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0 64.40MB / 64.40MB 2.0s done
#5 extracting sha256:3e6b9d1a95114e19f12262a4e8a59ad1d1a10ca7b82108adcf0605a200294964
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 197.38MB / 211.36MB 2.2s
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 211.36MB / 211.36MB 2.4s
#5 sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 211.36MB / 211.36MB 5.0s done
#5 extracting sha256:3e6b9d1a95114e19f12262a4e8a59ad1d1a10ca7b82108adcf0605a200294964 3.0s done
#5 extracting sha256:37927ed901b1b2608b72796c6881bf645480268eca4ac9a37b9219e050bb4d84
#5 extracting sha256:37927ed901b1b2608b72796c6881bf645480268eca4ac9a37b9219e050bb4d84 0.5s done
#5 DONE 5.5s

#5 [build 1/5] FROM docker.io/library/node:18@sha256:c6ae79e38498325db67193d391e6ec1d224d96c693a8a4d943498556716d3783
#5 extracting sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0
#5 extracting sha256:79b2f47ad4443652b9b5cc81a95ede249fd976310efdbee159f29638783778c0 1.8s done
#5 DONE 7.4s

#5 [build 1/5] FROM docker.io/library/node:18@sha256:c6ae79e38498325db67193d391e6ec1d224d96c693a8a4d943498556716d3783
#5 extracting sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab
#5 extracting sha256:e23f099911d692f62b851cf49a1e93294288a115f5cd2d014180e4d3684d34ab 4.7s done
#5 extracting sha256:cda7f44f2bddcc4bb7514474024b3f3705de00ddb6355a33be5ac7808e5b7125 done
#5 extracting sha256:c6b30c3f16966552af10ac00521f60355b1fcfd46ac1c20b1038587e28583ce7
#5 extracting sha256:c6b30c3f16966552af10ac00521f60355b1fcfd46ac1c20b1038587e28583ce7 2.1s done
#5 extracting sha256:3697be50c98b9d071df4637e1d3491d00e7b9f3a732768c876d82309b3c5a145
#5 extracting sha256:3697be50c98b9d071df4637e1d3491d00e7b9f3a732768c876d82309b3c5a145 0.1s done
#5 DONE 14.3s

#5 [build 1/5] FROM docker.io/library/node:18@sha256:c6ae79e38498325db67193d391e6ec1d224d96c693a8a4d943498556716d3783
#5 extracting sha256:461077a72fb7fe40d34a37d6a1958c4d16772d0dd77f572ec50a1fdc41a3754d done
#5 DONE 14.3s

#6 [build 2/5] WORKDIR /usr/src/app
#6 DONE 12.5s

#7 [build 3/5] COPY package*.json ./
#7 DONE 0.0s

#8 [build 4/5] RUN npm install
#8 0.617 npm error code ENOENT
#8 0.617 npm error syscall open
#8 0.618 npm error path /usr/src/app/package.json
#8 0.618 npm error errno -2
#8 0.618 npm error enoent Could not read package.json: Error: ENOENT: no such file or directory, open '/usr/src/app/package.json'
#8 0.618 npm error enoent This is related to npm not being able to find a file.
#8 0.618 npm error enoent
#8 0.619 npm error A complete log of this run can be found in: /root/.npm/_logs/2025-11-28T11_59_13_979Z-debug-0.log
#8 ERROR: process "/bin/sh -c npm install" did not complete successfully: exit code: 254
------
 > [build 4/5] RUN npm install:
0.617 npm error code ENOENT
0.617 npm error syscall open
0.618 npm error path /usr/src/app/package.json
0.618 npm error errno -2
0.618 npm error enoent Could not read package.json: Error: ENOENT: no such file or directory, open '/usr/src/app/package.json'
0.618 npm error enoent This is related to npm not being able to find a file.
0.618 npm error enoent
0.619 npm error A complete log of this run can be found in: /root/.npm/_logs/2025-11-28T11_59_13_979Z-debug-0.log
------
==> Building image
Waiting for depot builder...

==> Building image with Depot
--> build:  (​)
#1 [internal] load build definition from Dockerfile
#1 transferring dockerfile: 1.12kB done
#1 DONE 0.0s

#2 [internal] load metadata for docker.io/library/node:18
#2 DONE 0.2s

#3 [internal] load .dockerignore
#3 transferring context: 422B done
#3 DONE 0.0s

#4 [build 1/5] FROM docker.io/library/node:18@sha256:c6ae79e38498325db67193d391e6ec1d224d96c693a8a4d943498556716d3783
#4 resolve docker.io/library/node:18@sha256:c6ae79e38498325db67193d391e6ec1d224d96c693a8a4d943498556716d3783 done
#4 DONE 0.0s

#5 [build 2/5] WORKDIR /usr/src/app
#5 CACHED

#6 [internal] load build context
#6 transferring context: 97B done
#6 DONE 0.0s

#7 [build 3/5] COPY package*.json ./
#7 CACHED

#8 [build 4/5] RUN npm install
#8 0.583 npm error code ENOENT
#8 0.583 npm error syscall open
#8 0.583 npm error path /usr/src/app/package.json
#8 0.584 npm error errno -2
#8 0.584 npm error enoent Could not read package.json: Error: ENOENT: no such file or directory, open '/usr/src/app/package.json'
#8 0.584 npm error enoent This is related to npm not being able to find a file.
#8 0.584 npm error enoent
#8 0.585 npm error A complete log of this run can be found in: /root/.npm/_logs/2025-11-28T11_59_15_349Z-debug-0.log
#8 ERROR: process "/bin/sh -c npm install" did not complete successfully: exit code: 254
------
 > [build 4/5] RUN npm install:
0.583 npm error code ENOENT
0.583 npm error syscall open
0.583 npm error path /usr/src/app/package.json
0.584 npm error errno -2
0.584 npm error enoent Could not read package.json: Error: ENOENT: no such file or directory, open '/usr/src/app/package.json'
0.584 npm error enoent This is related to npm not being able to find a file.
0.584 npm error enoent
0.585 npm error A complete log of this run can be found in: /root/.npm/_logs/2025-11-28T11_59_15_349Z-debug-0.log
------
Error: failed to fetch an image or build from source: error building: failed to solve: process "/bin/sh -c npm install" did not complete successfully: exit code: 254
Dockerfile failed to build error
unsuccessful command 'flyctl deploy --build-only --push -a canelleapp --image-label deployment-0bdafeb8adc1d699b506475ca5d7ac92 '
```

Dockerfile


```
# Stage 1: Build the Application
# We use node:18 as the base for building and installing dependencies.
FROM node:18 AS build

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first to leverage Docker caching.
# If these files don't change, subsequent builds can skip 'npm install'.
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Stage 2: Create the Final Production Image
# We use node:18 as the runtime image with all the necessary tools.
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy the node_modules and built application files from the 'build' stage
COPY --from=build /usr/src/app/node_modules ./node_modules
COPY --from=build /usr/src/app/package*.json ./
COPY --from=build /usr/src/app .

# Expose the port your app runs on
ENV PORT=8080
EXPOSE $PORT

# Run the application using the non-root user (recommended for security)
USER node

# Define the command to start your application
CMD [ "node", "index.js" ]

```


.dockerignore


```
# Dependency/Build Directories
node_modules
npm-debug.log
.npm

# Project Files
.git
.gitignore
.dockerignore
Dockerfile
fly.toml # Fly.io configuration file

# Environment/Configuration Files
.env
.DS_Store
*.log

# Development/Testing files and directories (adjust as needed)
test
tests
docs
coverage
tmp
*~
# Any files generated during development or testing, e.g.:
dist
build

```


fly.toml


```
# fly.toml app configuration file generated for canelleapp on 2025-11-28T11:58:25Z
#
# See https://fly.io/docs/reference/configuration/ for information about how to use this file.
#

app = 'canelleapp'
primary_region = 'cdg'

[build]

[http_service]
  internal_port = 8080
  force_https = true
  auto_stop_machines = 'stop'
  auto_start_machines = true
  min_machines_running = 0
  processes = ['app']

[[vm]]
  memory = '1gb'
  cpu_kind = 'shared'
  cpus = 1
  memory_mb = 1024

```

