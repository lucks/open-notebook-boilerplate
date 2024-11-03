# Open Notebook Boilerplate

This is a sample structure for hosting your own version of the [Open Notebook](https://github.com/lfnovo/open-notebook). This will run the application and its infrastructure, as well as setup folders for persistence customization. 

## Clone this repository

Start by cloning this repo and cd into it.

```bash
git clone https://github.com/lfnovo/open-notebook-boilerplate
cd open-notebook-boilerplate
````

## Setup the docker.env file

Rename `docker.env.example` into `docker.env` and set up your API keys.

```bash
cp docker.env.example docker.env
```

Edit docker.env for your API Keys.

## Create a folder for your data

In this folder, run `mkdir notebook_data`. This folder will be used to store everything you upload and every media you create, like podcasts. 

## Run the app

`docker compose up` to bring the service up
`docker compose down` to bring it down

After the app starts, go to `http://localhost:8080`

## Setting up for the first time

After you login for the first time, you'll be required to set up the database.
Just click OK and it'll take 5 seconds. 

Later, you'll get a warning to setup different models. 

Go to Settings page and create 4 models, one for each type. 

### Example for OpenA AI

- language: gpt-4o-mini
- embedding: text-embedding-3-small
- text to speech: tts-1-hd
- speech to text: whisper-1

## Customizing the Transformations

The file `transformations.yaml` defines all transformations available in the UI. This file will be mounted to the container via docker compose. 

There will also be a `user/` folder where you can save your custom patterns to extend for even more transformations.

See [transformation docs](https://github.com/lfnovo/open-notebook/blob/main/docs/TRANSFORMATIONS.md) for details