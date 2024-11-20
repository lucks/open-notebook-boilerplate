# Open Notebook Boilerplate

This is a sample structure for hosting your own version of the [Open Notebook](https://github.com/lfnovo/open-notebook). This will run the application and its infrastructure, as well as setup folders for persistence customization. Check out the [docs page](https://www.open-notebook.ai/features.html) for more details on how to use all features. 

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

## Run the app

`docker compose up` to bring the service up
`docker compose down` to bring it down

After the app starts, go to `http://localhost:8080`

## Setting up for the first time

After you login for the first time, you'll be required to set up the database.
Just click OK and it'll take 5 seconds.

Later, you'll get a warning to setup different models.

Go to Settings page and create 4 models, one for each type. 

## Error Migrating from v0.1.0

If you are migrating from version v0.1.0, there was a problem in the Surreal SDK that made the migrations count go crazy. So upgrading to 0.1.1 might not trigger the new database migration that is required for this to run. 

If that is your case, just follow this:

Start the app.

```bash
docker compose up
```

Enter the docker compose exec mode on the DB machine

```bash
docker compose exec surrealdb /surreal sql --endpoint http://localhost:8000 --ns open_notebook --user root --pass root --db open_notebook
```

Run this command to reset the migration count to the right number:

```bash
delete from _sbl_migrations where version > 4;
```

Then, just run the app on the browser and let it migrate correctly. 

